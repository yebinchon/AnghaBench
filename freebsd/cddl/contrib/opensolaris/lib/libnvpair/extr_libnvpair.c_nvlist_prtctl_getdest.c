
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* nvlist_prtctl_t ;
struct TYPE_3__ {int * nvprt_fp; } ;
typedef int FILE ;



FILE *
nvlist_prtctl_getdest(nvlist_prtctl_t pctl)
{
 return (pctl->nvprt_fp);
}
