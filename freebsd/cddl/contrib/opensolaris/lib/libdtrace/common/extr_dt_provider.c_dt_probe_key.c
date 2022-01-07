
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dtpd_mod; char* dtpd_func; char* dtpd_name; } ;
typedef TYPE_1__ dtrace_probedesc_t ;


 int INT_MAX ;
 int snprintf (char*,int ,char*,char*,char*,char*) ;

__attribute__((used)) static char *
dt_probe_key(const dtrace_probedesc_t *pdp, char *s)
{
 (void) snprintf(s, INT_MAX, "%s:%s:%s",
     pdp->dtpd_mod, pdp->dtpd_func, pdp->dtpd_name);
 return (s);
}
