
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dt_macros; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_7__ {TYPE_1__* pfv_dtp; } ;
typedef TYPE_2__ dt_pfargv_t ;
typedef int dt_pfargd_t ;
typedef int dt_node_t ;
struct TYPE_8__ {scalar_t__ di_id; } ;
typedef TYPE_3__ dt_ident_t ;


 TYPE_3__* dt_idhash_lookup (int ,char*) ;
 scalar_t__ dt_node_is_integer (int *) ;
 scalar_t__ dt_node_is_pointer (int *) ;
 scalar_t__ dt_node_is_usymaddr (int *) ;

__attribute__((used)) static int
pfcheck_uaddr(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
 dtrace_hdl_t *dtp = pfv->pfv_dtp;
 dt_ident_t *idp = dt_idhash_lookup(dtp->dt_macros, "target");

 if (dt_node_is_usymaddr(dnp))
  return (1);

 if (idp == ((void*)0) || idp->di_id == 0)
  return (0);

 return (dt_node_is_pointer(dnp) || dt_node_is_integer(dnp));
}
