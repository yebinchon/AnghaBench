
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ playing; } ;
struct TYPE_6__ {int play_mode; TYPE_1__ flags; scalar_t__ write_buffer_size; int * write_buffer; int play_codec; int board; } ;
typedef TYPE_2__ IXJ ;


 int ixj_WriteDSPCommand (int,TYPE_2__*) ;
 int ixjdebug ;
 int jiffies ;
 int kfree (int *) ;
 int printk (char*,int ,int ,int ) ;

__attribute__((used)) static void ixj_play_stop(IXJ *j)
{
 if (ixjdebug & 0x0002)
  printk("IXJ %d Stopping Play Codec %d at %ld\n", j->board, j->play_codec, jiffies);

 kfree(j->write_buffer);
 j->write_buffer = ((void*)0);
 j->write_buffer_size = 0;
 if (j->play_mode > -1) {
  ixj_WriteDSPCommand(0x5221, j);

  j->play_mode = -1;
 }
 j->flags.playing = 0;
}
