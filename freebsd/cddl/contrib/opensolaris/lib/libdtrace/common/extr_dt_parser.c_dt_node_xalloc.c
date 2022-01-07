
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uchar_t ;
typedef int dtrace_hdl_t ;
struct TYPE_4__ {int dn_line; int dn_reg; int dn_u; int * dn_link; int * dn_list; int dn_attr; scalar_t__ dn_op; scalar_t__ dn_flags; scalar_t__ dn_kind; int dn_type; int * dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;


 int CTF_ERR ;
 int _dtrace_defattr ;
 int bzero (int *,int) ;
 TYPE_1__* dt_alloc (int *,int) ;

dt_node_t *
dt_node_xalloc(dtrace_hdl_t *dtp, int kind)
{
 dt_node_t *dnp = dt_alloc(dtp, sizeof (dt_node_t));

 if (dnp == ((void*)0))
  return (((void*)0));

 dnp->dn_ctfp = ((void*)0);
 dnp->dn_type = CTF_ERR;
 dnp->dn_kind = (uchar_t)kind;
 dnp->dn_flags = 0;
 dnp->dn_op = 0;
 dnp->dn_line = -1;
 dnp->dn_reg = -1;
 dnp->dn_attr = _dtrace_defattr;
 dnp->dn_list = ((void*)0);
 dnp->dn_link = ((void*)0);
 bzero(&dnp->dn_u, sizeof (dnp->dn_u));

 return (dnp);
}
