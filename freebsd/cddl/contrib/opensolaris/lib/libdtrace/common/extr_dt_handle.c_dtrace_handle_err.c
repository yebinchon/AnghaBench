
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int dp_stmts; } ;
typedef TYPE_2__ dtrace_prog_t ;
struct TYPE_14__ {scalar_t__* dt_options; TYPE_2__* dt_errprog; void* dt_errarg; int * dt_errhdlr; } ;
typedef TYPE_3__ dtrace_hdl_t ;
typedef int dtrace_handle_err_f ;
struct TYPE_15__ {int dted_uarg; } ;
typedef TYPE_4__ dtrace_ecbdesc_t ;
struct TYPE_16__ {TYPE_1__* ds_desc; } ;
typedef TYPE_5__ dt_stmt_t ;
struct TYPE_12__ {TYPE_4__* dtsd_ecbdesc; } ;


 size_t DTRACEOPT_GRABANON ;
 scalar_t__ DTRACEOPT_UNSET ;
 int DTRACE_C_ZDEFS ;
 int DTRACE_PROBESPEC_NAME ;
 int DT_ECB_ERROR ;
 int EALREADY ;
 int _dt_errprog ;
 int assert (int ) ;
 TYPE_5__* dt_list_next (int *) ;
 int dt_set_errno (TYPE_3__*,int ) ;
 int dtrace_errno (TYPE_3__*) ;
 TYPE_2__* dtrace_program_strcompile (TYPE_3__*,int ,int ,int ,int ,int *) ;

int
dtrace_handle_err(dtrace_hdl_t *dtp, dtrace_handle_err_f *hdlr, void *arg)
{
 dtrace_prog_t *pgp = ((void*)0);
 dt_stmt_t *stp;
 dtrace_ecbdesc_t *edp;




 if (dtp->dt_errhdlr != ((void*)0))
  return (dt_set_errno(dtp, EALREADY));






 if (dtp->dt_options[DTRACEOPT_GRABANON] != DTRACEOPT_UNSET)
  goto out;

 if ((pgp = dtrace_program_strcompile(dtp, _dt_errprog,
     DTRACE_PROBESPEC_NAME, DTRACE_C_ZDEFS, 0, ((void*)0))) == ((void*)0))
  return (dt_set_errno(dtp, dtrace_errno(dtp)));

 stp = dt_list_next(&pgp->dp_stmts);
 assert(stp != ((void*)0));

 edp = stp->ds_desc->dtsd_ecbdesc;
 assert(edp != ((void*)0));
 edp->dted_uarg = DT_ECB_ERROR;

out:
 dtp->dt_errhdlr = hdlr;
 dtp->dt_errarg = arg;
 dtp->dt_errprog = pgp;

 return (0);
}
