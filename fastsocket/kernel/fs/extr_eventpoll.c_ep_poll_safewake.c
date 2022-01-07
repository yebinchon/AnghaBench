
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int EP_MAX_NESTS ;
 int ep_call_nested (int *,int ,int ,int *,int *,void*) ;
 int ep_poll_wakeup_proc ;
 int get_cpu () ;
 int poll_safewake_ncalls ;
 int put_cpu () ;

__attribute__((used)) static void ep_poll_safewake(wait_queue_head_t *wq)
{
 int this_cpu = get_cpu();

 ep_call_nested(&poll_safewake_ncalls, EP_MAX_NESTS,
         ep_poll_wakeup_proc, ((void*)0), wq, (void *) (long) this_cpu);

 put_cpu();
}
