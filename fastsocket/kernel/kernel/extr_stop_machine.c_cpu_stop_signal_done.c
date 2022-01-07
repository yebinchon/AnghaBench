
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_stop_done {int executed; int completion; int nr_todo; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void cpu_stop_signal_done(struct cpu_stop_done *done, bool executed)
{
 if (done) {
  if (executed)
   done->executed = 1;
  if (atomic_dec_and_test(&done->nr_todo))
   complete(&done->completion);
 }
}
