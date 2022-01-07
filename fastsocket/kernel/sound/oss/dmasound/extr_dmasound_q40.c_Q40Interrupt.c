
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int action_queue; int count; scalar_t__ active; int sync_queue; } ;


 int* DAC_LEFT ;
 int* DAC_RIGHT ;
 int Q40Play () ;
 int SAMPLE_CLEAR_REG ;
 int SAMPLE_ENABLE_REG ;
 int WAKE_UP (int ) ;
 int master_outb (int,int ) ;
 int q40_sc ;
 TYPE_1__ write_sq ;

__attribute__((used)) static void Q40Interrupt(void)
{
 if (!write_sq.active) {



            WAKE_UP(write_sq.sync_queue);
     master_outb(0,SAMPLE_ENABLE_REG);
     goto exit;
 } else write_sq.active=0;
 write_sq.count--;
 Q40Play();

 if (q40_sc<2)
       {
  master_outb(0,SAMPLE_ENABLE_REG);
  *DAC_LEFT=*DAC_RIGHT=127;
       }
 WAKE_UP(write_sq.action_queue);

 exit:
 master_outb(1,SAMPLE_CLEAR_REG);
}
