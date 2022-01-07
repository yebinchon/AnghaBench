
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
struct TYPE_6__ {int dp_stmts; } ;
typedef TYPE_1__ dtrace_prog_t ;
typedef int dtrace_hdl_t ;
struct TYPE_7__ {int * ds_desc; } ;
typedef TYPE_2__ dt_stmt_t ;


 TYPE_2__* dt_alloc (int *,int) ;
 int dt_list_append (int *,TYPE_2__*) ;

int
dtrace_stmt_add(dtrace_hdl_t *dtp, dtrace_prog_t *pgp, dtrace_stmtdesc_t *sdp)
{
 dt_stmt_t *stp = dt_alloc(dtp, sizeof (dt_stmt_t));

 if (stp == ((void*)0))
  return (-1);

 dt_list_append(&pgp->dp_stmts, stp);
 stp->ds_desc = sdp;

 return (0);
}
