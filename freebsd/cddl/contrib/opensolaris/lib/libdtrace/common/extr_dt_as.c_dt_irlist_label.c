
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int dl_label; } ;
typedef TYPE_1__ dt_irlist_t ;



uint_t
dt_irlist_label(dt_irlist_t *dlp)
{
 return (dlp->dl_label++);
}
