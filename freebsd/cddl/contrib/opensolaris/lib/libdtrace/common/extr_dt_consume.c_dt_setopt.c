
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int optdata ;
struct TYPE_4__ {char const* dtsda_option; int * dtsda_handle; int const* dtsda_probe; int dtsda_newval; int dtsda_oldval; } ;
typedef TYPE_1__ dtrace_setoptdata_t ;
typedef int dtrace_probedata_t ;
typedef int dtrace_hdl_t ;


 char* alloca (int) ;
 int bzero (TYPE_1__*,int) ;
 int dt_handle_liberr (int *,int const*,char*) ;
 int dt_handle_setopt (int *,TYPE_1__*) ;
 char* dtrace_errmsg (int *,int ) ;
 int dtrace_errno (int *) ;
 int dtrace_getopt (int *,char const*,int *) ;
 scalar_t__ dtrace_setopt (int *,char const*,char const*) ;
 int snprintf (char*,int,char*,char const*,char const*,char const*) ;
 int strlen (char const*) ;

int
dt_setopt(dtrace_hdl_t *dtp, const dtrace_probedata_t *data,
    const char *option, const char *value)
{
 int len, rval;
 char *msg;
 const char *errstr;
 dtrace_setoptdata_t optdata;

 bzero(&optdata, sizeof (optdata));
 (void) dtrace_getopt(dtp, option, &optdata.dtsda_oldval);

 if (dtrace_setopt(dtp, option, value) == 0) {
  (void) dtrace_getopt(dtp, option, &optdata.dtsda_newval);
  optdata.dtsda_probe = data;
  optdata.dtsda_option = option;
  optdata.dtsda_handle = dtp;

  if ((rval = dt_handle_setopt(dtp, &optdata)) != 0)
   return (rval);

  return (0);
 }

 errstr = dtrace_errmsg(dtp, dtrace_errno(dtp));
 len = strlen(option) + strlen(value) + strlen(errstr) + 80;
 msg = alloca(len);

 (void) snprintf(msg, len, "couldn't set option \"%s\" to \"%s\": %s\n",
     option, value, errstr);

 if ((rval = dt_handle_liberr(dtp, data, msg)) == 0)
  return (0);

 return (rval);
}
