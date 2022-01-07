
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_agent_expr (void*) ;

__attribute__((used)) static void
do_free_agent_expr_cleanup (void *x)
{
  free_agent_expr (x);
}
