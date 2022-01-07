
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ recording; } ;
struct TYPE_6__ {int rec_mode; TYPE_1__ flags; scalar_t__ read_buffer_size; int * read_buffer; int rec_codec; int board; } ;
typedef TYPE_2__ IXJ ;


 int ixj_WriteDSPCommand (int,TYPE_2__*) ;
 int ixjdebug ;
 int jiffies ;
 int kfree (int *) ;
 int printk (char*,int ,int ,int ) ;

__attribute__((used)) static void ixj_record_stop(IXJ *j)
{
 if (ixjdebug & 0x0002)
  printk("IXJ %d Stopping Record Codec %d at %ld\n", j->board, j->rec_codec, jiffies);

 kfree(j->read_buffer);
 j->read_buffer = ((void*)0);
 j->read_buffer_size = 0;
 if (j->rec_mode > -1) {
  ixj_WriteDSPCommand(0x5120, j);
  j->rec_mode = -1;
 }
 j->flags.recording = 0;
}
