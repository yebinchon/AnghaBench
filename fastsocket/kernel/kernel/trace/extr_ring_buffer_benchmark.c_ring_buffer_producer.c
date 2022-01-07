
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct ring_buffer_event {int dummy; } ;


 unsigned long NSEC_PER_MSEC ;
 scalar_t__ RUN_TIME ;
 int USEC_PER_MSEC ;
 unsigned long long USEC_PER_SEC ;
 int buffer ;
 int cond_resched () ;
 scalar_t__ consumer ;
 scalar_t__ disable_reader ;
 int do_div (unsigned long long,int ) ;
 int do_gettimeofday (struct timeval*) ;
 int init_completion (int *) ;
 scalar_t__ kill_test ;
 unsigned long long read ;
 int read_done ;
 scalar_t__ read_events ;
 int read_start ;
 int reader_finish ;
 unsigned long long ring_buffer_entries (int ) ;
 int* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* ring_buffer_lock_reserve (int ,int) ;
 unsigned long long ring_buffer_overruns (int ) ;
 int ring_buffer_unlock_commit (int ,struct ring_buffer_event*) ;
 int smp_processor_id () ;
 int smp_wmb () ;
 int trace_printk (char*,...) ;
 int wait_for_completion (int *) ;
 int wake_up_process (scalar_t__) ;
 int wakeup_interval ;

__attribute__((used)) static void ring_buffer_producer(void)
{
 struct timeval start_tv;
 struct timeval end_tv;
 unsigned long long time;
 unsigned long long entries;
 unsigned long long overruns;
 unsigned long missed = 0;
 unsigned long hit = 0;
 unsigned long avg;
 int cnt = 0;





 trace_printk("Starting ring buffer hammer\n");
 do_gettimeofday(&start_tv);
 do {
  struct ring_buffer_event *event;
  int *entry;

  event = ring_buffer_lock_reserve(buffer, 10);
  if (!event) {
   missed++;
  } else {
   hit++;
   entry = ring_buffer_event_data(event);
   *entry = smp_processor_id();
   ring_buffer_unlock_commit(buffer, event);
  }
  do_gettimeofday(&end_tv);

  cnt++;
  if (consumer && !(cnt % wakeup_interval))
   wake_up_process(consumer);
  if (cnt % wakeup_interval)
   cond_resched();


 } while (end_tv.tv_sec < (start_tv.tv_sec + RUN_TIME) && !kill_test);
 trace_printk("End ring buffer hammer\n");

 if (consumer) {

  init_completion(&read_start);
  init_completion(&read_done);

  smp_wmb();
  reader_finish = 1;

  smp_wmb();
  wake_up_process(consumer);
  wait_for_completion(&read_done);
 }

 time = end_tv.tv_sec - start_tv.tv_sec;
 time *= USEC_PER_SEC;
 time += (long long)((long)end_tv.tv_usec - (long)start_tv.tv_usec);

 entries = ring_buffer_entries(buffer);
 overruns = ring_buffer_overruns(buffer);

 if (kill_test)
  trace_printk("ERROR!\n");
 trace_printk("Time:     %lld (usecs)\n", time);
 trace_printk("Overruns: %lld\n", overruns);
 if (disable_reader)
  trace_printk("Read:     (reader disabled)\n");
 else
  trace_printk("Read:     %ld  (by %s)\n", read,
   read_events ? "events" : "pages");
 trace_printk("Entries:  %lld\n", entries);
 trace_printk("Total:    %lld\n", entries + overruns + read);
 trace_printk("Missed:   %ld\n", missed);
 trace_printk("Hit:      %ld\n", hit);


 do_div(time, USEC_PER_MSEC);
 if (time)
  hit /= (long)time;
 else
  trace_printk("TIME IS ZERO??\n");

 trace_printk("Entries per millisec: %ld\n", hit);

 if (hit) {

  avg = NSEC_PER_MSEC / hit;
  trace_printk("%ld ns per entry\n", avg);
 }

 if (missed) {
  if (time)
   missed /= (long)time;

  trace_printk("Total iterations per millisec: %ld\n",
        hit + missed);


  if (!(hit + missed)) {
   trace_printk("hit + missed overflowed and totalled zero!\n");
   hit--;
  }


  avg = NSEC_PER_MSEC / (hit + missed);
  trace_printk("%ld ns per entry\n", avg);
 }
}
