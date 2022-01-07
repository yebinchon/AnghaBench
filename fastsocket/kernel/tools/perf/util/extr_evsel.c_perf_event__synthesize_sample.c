
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union u64_swap {int val64; void** val32; } ;
struct TYPE_4__ {int ip; } ;
struct TYPE_3__ {int* array; } ;
union perf_event {TYPE_2__ ip; TYPE_1__ sample; } ;
typedef int u64 ;
struct perf_sample {int time; int addr; int id; int stream_id; int period; void* cpu; void* tid; void* pid; int ip; } ;


 int PERF_SAMPLE_ADDR ;
 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_ID ;
 int PERF_SAMPLE_IP ;
 int PERF_SAMPLE_PERIOD ;
 int PERF_SAMPLE_STREAM_ID ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TIME ;
 void* bswap_32 (void*) ;
 void* bswap_64 (int) ;

int perf_event__synthesize_sample(union perf_event *event, u64 type,
      const struct perf_sample *sample,
      bool swapped)
{
 u64 *array;





 union u64_swap u;

 array = event->sample.array;

 if (type & PERF_SAMPLE_IP) {
  event->ip.ip = sample->ip;
  array++;
 }

 if (type & PERF_SAMPLE_TID) {
  u.val32[0] = sample->pid;
  u.val32[1] = sample->tid;
  if (swapped) {



   u.val32[0] = bswap_32(u.val32[0]);
   u.val32[1] = bswap_32(u.val32[1]);
   u.val64 = bswap_64(u.val64);
  }

  *array = u.val64;
  array++;
 }

 if (type & PERF_SAMPLE_TIME) {
  *array = sample->time;
  array++;
 }

 if (type & PERF_SAMPLE_ADDR) {
  *array = sample->addr;
  array++;
 }

 if (type & PERF_SAMPLE_ID) {
  *array = sample->id;
  array++;
 }

 if (type & PERF_SAMPLE_STREAM_ID) {
  *array = sample->stream_id;
  array++;
 }

 if (type & PERF_SAMPLE_CPU) {
  u.val32[0] = sample->cpu;
  if (swapped) {



   u.val32[0] = bswap_32(u.val32[0]);
   u.val64 = bswap_64(u.val64);
  }
  *array = u.val64;
  array++;
 }

 if (type & PERF_SAMPLE_PERIOD) {
  *array = sample->period;
  array++;
 }

 return 0;
}
