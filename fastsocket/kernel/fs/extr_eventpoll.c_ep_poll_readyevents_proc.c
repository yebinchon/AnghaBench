
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readyevents_arg {int locked; int ep; } ;


 int ep_read_events_proc ;
 int ep_scan_ready_list (int ,int ,int *,int ) ;

__attribute__((used)) static int ep_poll_readyevents_proc(void *priv, void *cookie, int call_nests)
{
 struct readyevents_arg *arg = priv;

 return ep_scan_ready_list(arg->ep, ep_read_events_proc, ((void*)0),
      arg->locked);
}
