
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_release_call (void*) ;

__attribute__((used)) static void nlm4svc_callback_release(void *data)
{
 nlm_release_call(data);
}
