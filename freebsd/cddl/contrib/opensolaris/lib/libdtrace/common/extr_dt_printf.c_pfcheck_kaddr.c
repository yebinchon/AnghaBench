
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dt_pfargv_t ;
typedef int dt_pfargd_t ;
typedef int dt_node_t ;


 scalar_t__ dt_node_is_integer (int *) ;
 scalar_t__ dt_node_is_pointer (int *) ;
 scalar_t__ dt_node_is_symaddr (int *) ;

__attribute__((used)) static int
pfcheck_kaddr(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
 return (dt_node_is_pointer(dnp) || dt_node_is_integer(dnp) ||
     dt_node_is_symaddr(dnp));
}
