
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int str ;
struct TYPE_6__ {void* dt_amin; int dt_cflags; TYPE_1__* dt_pcb; } ;
typedef TYPE_2__ dtrace_hdl_t ;
typedef void* dtrace_attribute_t ;
struct TYPE_5__ {void* pcb_amin; int pcb_cflags; } ;


 int DTRACE_ATTR2STR_MAX ;
 int DTRACE_C_EATTR ;
 int EDT_BADOPTVAL ;
 int dt_dprintf (char*,int ) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 int dtrace_attr2str (void*,char*,int) ;
 int dtrace_str2attr (char const*,void**) ;

__attribute__((used)) static int
dt_opt_amin(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 char str[DTRACE_ATTR2STR_MAX];
 dtrace_attribute_t attr;

 if (arg == ((void*)0) || dtrace_str2attr(arg, &attr) == -1)
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 dt_dprintf("set compiler attribute minimum to %s\n",
     dtrace_attr2str(attr, str, sizeof (str)));

 if (dtp->dt_pcb != ((void*)0)) {
  dtp->dt_pcb->pcb_cflags |= DTRACE_C_EATTR;
  dtp->dt_pcb->pcb_amin = attr;
 } else {
  dtp->dt_cflags |= DTRACE_C_EATTR;
  dtp->dt_amin = attr;
 }

 return (0);
}
