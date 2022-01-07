
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dtsda_newval; int dtsda_option; } ;
typedef TYPE_1__ dtrace_setoptdata_t ;


 scalar_t__ DTRACEOPT_UNSET ;
 int DTRACE_HANDLE_OK ;
 int g_flowindent ;
 int g_quiet ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
setopthandler(const dtrace_setoptdata_t *data, void *arg)
{
 if (strcmp(data->dtsda_option, "quiet") == 0)
  g_quiet = data->dtsda_newval != DTRACEOPT_UNSET;

 if (strcmp(data->dtsda_option, "flowindent") == 0)
  g_flowindent = data->dtsda_newval != DTRACEOPT_UNSET;

 return (DTRACE_HANDLE_OK);
}
