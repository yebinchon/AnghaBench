
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int dst_state_exit_connected (struct dst_state*) ;
 int dst_state_init_connected (struct dst_state*) ;

__attribute__((used)) static void inline dst_state_reset_nolock(struct dst_state *st)
{
 dst_state_exit_connected(st);
 dst_state_init_connected(st);
}
