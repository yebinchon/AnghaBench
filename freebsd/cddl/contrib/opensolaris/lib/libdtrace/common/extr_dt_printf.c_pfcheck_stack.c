
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dt_pfargv_t ;
typedef int dt_pfargd_t ;
typedef int dt_node_t ;


 int dt_node_is_stack (int *) ;

__attribute__((used)) static int
pfcheck_stack(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
 return (dt_node_is_stack(dnp));
}
