
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long* sig; } ;
typedef TYPE_1__ sigset_t ;
struct TYPE_6__ {long* sig; } ;
typedef TYPE_2__ compat_sigset_t ;


 int _NSIG_WORDS ;

void
sigset_from_compat (sigset_t *set, compat_sigset_t *compat)
{
 switch (_NSIG_WORDS) {
 case 4: set->sig[3] = compat->sig[6] | (((long)compat->sig[7]) << 32 );
 case 3: set->sig[2] = compat->sig[4] | (((long)compat->sig[5]) << 32 );
 case 2: set->sig[1] = compat->sig[2] | (((long)compat->sig[3]) << 32 );
 case 1: set->sig[0] = compat->sig[0] | (((long)compat->sig[1]) << 32 );
 }
}
