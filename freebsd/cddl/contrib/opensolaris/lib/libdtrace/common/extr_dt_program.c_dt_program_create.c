
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dp_dofversion; } ;
typedef TYPE_1__ dtrace_prog_t ;
struct TYPE_10__ {int dt_programs; } ;
typedef TYPE_2__ dtrace_hdl_t ;


 int DOF_VERSION_1 ;
 int EDT_NOMEM ;
 int dt_list_append (int *,TYPE_1__*) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 TYPE_1__* dt_zalloc (TYPE_2__*,int) ;

dtrace_prog_t *
dt_program_create(dtrace_hdl_t *dtp)
{
 dtrace_prog_t *pgp = dt_zalloc(dtp, sizeof (dtrace_prog_t));

 if (pgp != ((void*)0)) {
  dt_list_append(&dtp->dt_programs, pgp);
 } else {
  (void) dt_set_errno(dtp, EDT_NOMEM);
  return (((void*)0));
 }






 pgp->dp_dofversion = DOF_VERSION_1;

 return (pgp);
}
