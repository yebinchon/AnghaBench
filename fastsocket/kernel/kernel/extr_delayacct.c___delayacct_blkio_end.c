
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* delays; } ;
struct TYPE_3__ {int flags; int blkio_count; int blkio_delay; int blkio_end; int blkio_start; int swapin_count; int swapin_delay; } ;


 int DELAYACCT_PF_SWAPIN ;
 TYPE_2__* current ;
 int delayacct_end (int *,int *,int *,int *) ;

void __delayacct_blkio_end(void)
{
 if (current->delays->flags & DELAYACCT_PF_SWAPIN)

  delayacct_end(&current->delays->blkio_start,
   &current->delays->blkio_end,
   &current->delays->swapin_delay,
   &current->delays->swapin_count);
 else
  delayacct_end(&current->delays->blkio_start,
   &current->delays->blkio_end,
   &current->delays->blkio_delay,
   &current->delays->blkio_count);
}
