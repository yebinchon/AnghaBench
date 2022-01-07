
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dtrace_optval_t ;
struct TYPE_7__ {int * dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_8__ {size_t o_option; int * o_name; } ;
typedef TYPE_2__ dt_option_t ;


 int EDT_BADOPTNAME ;
 int EINVAL ;
 TYPE_2__* _dtrace_drtoptions ;
 TYPE_2__* _dtrace_rtoptions ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ strcmp (int *,char const*) ;

int
dtrace_getopt(dtrace_hdl_t *dtp, const char *opt, dtrace_optval_t *val)
{
 const dt_option_t *op;

 if (opt == ((void*)0))
  return (dt_set_errno(dtp, EINVAL));





 for (op = _dtrace_rtoptions; op->o_name != ((void*)0); op++) {
  if (strcmp(op->o_name, opt) == 0) {
   *val = dtp->dt_options[op->o_option];
   return (0);
  }
 }

 for (op = _dtrace_drtoptions; op->o_name != ((void*)0); op++) {
  if (strcmp(op->o_name, opt) == 0) {
   *val = dtp->dt_options[op->o_option];
   return (0);
  }
 }

 return (dt_set_errno(dtp, EDT_BADOPTNAME));
}
