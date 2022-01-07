
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int POLLIN ;
 int ep_wake_up_nested (int *,int ,int) ;

__attribute__((used)) static int ep_poll_wakeup_proc(void *priv, void *cookie, int call_nests)
{
 ep_wake_up_nested((wait_queue_head_t *) cookie, POLLIN,
     1 + call_nests);
 return 0;
}
