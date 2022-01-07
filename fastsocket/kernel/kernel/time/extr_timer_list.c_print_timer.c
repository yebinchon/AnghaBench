
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct seq_file {int dummy; } ;
struct hrtimer {int start_pid; int start_comm; struct hrtimer* start_site; int state; struct hrtimer* function; } ;


 int SEQ_printf (struct seq_file*,char*,...) ;
 int TASK_COMM_LEN ;
 int hrtimer_get_expires (struct hrtimer*) ;
 int hrtimer_get_softexpires (struct hrtimer*) ;
 scalar_t__ ktime_to_ns (int ) ;
 int memcpy (char*,int ,int) ;
 int print_name_offset (struct seq_file*,struct hrtimer*) ;

__attribute__((used)) static void
print_timer(struct seq_file *m, struct hrtimer *taddr, struct hrtimer *timer,
     int idx, u64 now)
{



 SEQ_printf(m, " #%d: ", idx);
 print_name_offset(m, taddr);
 SEQ_printf(m, ", ");
 print_name_offset(m, timer->function);
 SEQ_printf(m, ", S:%02lx", timer->state);







 SEQ_printf(m, "\n");
 SEQ_printf(m, " # expires at %Lu-%Lu nsecs [in %Ld to %Ld nsecs]\n",
  (unsigned long long)ktime_to_ns(hrtimer_get_softexpires(timer)),
  (unsigned long long)ktime_to_ns(hrtimer_get_expires(timer)),
  (long long)(ktime_to_ns(hrtimer_get_softexpires(timer)) - now),
  (long long)(ktime_to_ns(hrtimer_get_expires(timer)) - now));
}
