
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ dt_active; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_12__ {int (* o_func ) (TYPE_1__*,char const*,int ) ;int o_option; int * o_name; } ;
typedef TYPE_2__ dt_option_t ;


 int EDT_ACTIVE ;
 int EDT_BADOPTNAME ;
 int EINVAL ;
 TYPE_2__* _dtrace_ctoptions ;
 TYPE_2__* _dtrace_drtoptions ;
 TYPE_2__* _dtrace_rtoptions ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ strcmp (int *,char const*) ;
 int stub1 (TYPE_1__*,char const*,int ) ;
 int stub2 (TYPE_1__*,char const*,int ) ;
 int stub3 (TYPE_1__*,char const*,int ) ;

int
dtrace_setopt(dtrace_hdl_t *dtp, const char *opt, const char *val)
{
 const dt_option_t *op;

 if (opt == ((void*)0))
  return (dt_set_errno(dtp, EINVAL));

 for (op = _dtrace_ctoptions; op->o_name != ((void*)0); op++) {
  if (strcmp(op->o_name, opt) == 0)
   return (op->o_func(dtp, val, op->o_option));
 }

 for (op = _dtrace_drtoptions; op->o_name != ((void*)0); op++) {
  if (strcmp(op->o_name, opt) == 0)
   return (op->o_func(dtp, val, op->o_option));
 }

 for (op = _dtrace_rtoptions; op->o_name != ((void*)0); op++) {
  if (strcmp(op->o_name, opt) == 0) {




   if (dtp->dt_active)
    return (dt_set_errno(dtp, EDT_ACTIVE));

   return (op->o_func(dtp, val, op->o_option));
  }
 }

 return (dt_set_errno(dtp, EDT_BADOPTNAME));
}
