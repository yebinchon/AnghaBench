
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtpd_name; int dtpd_func; int dtpd_mod; } ;
typedef TYPE_1__ dtrace_probedesc_t ;


 size_t strlen (int ) ;

__attribute__((used)) static size_t
dt_probe_keylen(const dtrace_probedesc_t *pdp)
{
 return (strlen(pdp->dtpd_mod) + 1 +
     strlen(pdp->dtpd_func) + 1 + strlen(pdp->dtpd_name) + 1);
}
