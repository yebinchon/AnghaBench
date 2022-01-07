
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lock_kernel () ;
 int nlm_release_call (void*) ;
 int unlock_kernel () ;

__attribute__((used)) static void nlmclnt_rpc_release(void *data)
{
 lock_kernel();
 nlm_release_call(data);
 unlock_kernel();
}
