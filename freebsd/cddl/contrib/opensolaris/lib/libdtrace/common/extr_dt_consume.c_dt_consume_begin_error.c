
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dtpd_name; int dtpd_provider; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
struct TYPE_7__ {TYPE_1__* dteda_pdesc; } ;
typedef TYPE_2__ dtrace_errdata_t ;
struct TYPE_8__ {int (* dtbgn_errhdlr ) (TYPE_2__ const*,int ) ;int dtbgn_errarg; scalar_t__ dtbgn_beginonly; } ;
typedef TYPE_3__ dt_begin_t ;


 int DTRACE_HANDLE_OK ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (TYPE_2__ const*,int ) ;

__attribute__((used)) static int
dt_consume_begin_error(const dtrace_errdata_t *data, void *arg)
{
 dt_begin_t *begin = (dt_begin_t *)arg;
 dtrace_probedesc_t *pd = data->dteda_pdesc;

 int r1 = (strcmp(pd->dtpd_provider, "dtrace") == 0);
 int r2 = (strcmp(pd->dtpd_name, "BEGIN") == 0);

 if (begin->dtbgn_beginonly) {
  if (!(r1 && r2))
   return (DTRACE_HANDLE_OK);
 } else {
  if (r1 && r2)
   return (DTRACE_HANDLE_OK);
 }

 return (begin->dtbgn_errhdlr(data, begin->dtbgn_errarg));
}
