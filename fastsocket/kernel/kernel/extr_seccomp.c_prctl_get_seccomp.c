
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long mode; } ;
struct TYPE_4__ {TYPE_1__ seccomp; } ;


 TYPE_2__* current ;

long prctl_get_seccomp(void)
{
 return current->seccomp.mode;
}
