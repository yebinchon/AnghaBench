
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_longlong_t ;
typedef int str ;
typedef int processorid_t ;
struct TYPE_7__ {scalar_t__ (* dt_drophdlr ) (TYPE_2__*,int ) ;int dt_droparg; scalar_t__ dt_droptags; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef scalar_t__ dtrace_dropkind_t ;
struct TYPE_8__ {int dtdda_drops; char* dtdda_msg; scalar_t__ dtdda_kind; int dtdda_cpu; TYPE_1__* dtdda_handle; } ;
typedef TYPE_2__ dtrace_dropdata_t ;
typedef int drop ;


 scalar_t__ DTRACEDROP_AGGREGATION ;
 scalar_t__ DTRACEDROP_PRINCIPAL ;
 scalar_t__ DTRACE_HANDLE_ABORT ;
 int EDT_DROPABORT ;
 int assert (int) ;
 int bzero (TYPE_2__*,int) ;
 char* dt_droptag (scalar_t__) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 size_t strlen (char*) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

int
dt_handle_cpudrop(dtrace_hdl_t *dtp, processorid_t cpu,
    dtrace_dropkind_t what, uint64_t howmany)
{
 dtrace_dropdata_t drop;
 char str[80], *s;
 int size;

 assert(what == DTRACEDROP_PRINCIPAL || what == DTRACEDROP_AGGREGATION);

 bzero(&drop, sizeof (drop));
 drop.dtdda_handle = dtp;
 drop.dtdda_cpu = cpu;
 drop.dtdda_kind = what;
 drop.dtdda_drops = howmany;
 drop.dtdda_msg = str;

 if (dtp->dt_droptags) {
  (void) snprintf(str, sizeof (str), "[%s] ", dt_droptag(what));
  s = &str[strlen(str)];
  size = sizeof (str) - (s - str);
 } else {
  s = str;
  size = sizeof (str);
 }

 (void) snprintf(s, size, "%llu %sdrop%s on CPU %d\n",
     (u_longlong_t)howmany,
     what == DTRACEDROP_PRINCIPAL ? "" : "aggregation ",
     howmany > 1 ? "s" : "", cpu);

 if (dtp->dt_drophdlr == ((void*)0))
  return (dt_set_errno(dtp, EDT_DROPABORT));

 if ((*dtp->dt_drophdlr)(&drop, dtp->dt_droparg) == DTRACE_HANDLE_ABORT)
  return (dt_set_errno(dtp, EDT_DROPABORT));

 return (0);
}
