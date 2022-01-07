
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_6__ {scalar_t__ stereo; } ;
struct TYPE_5__ {int speed; } ;
struct TYPE_8__ {TYPE_2__ soft; TYPE_1__ hard; } ;
struct TYPE_7__ {int** buffers; size_t front; int count; int max_count; int active; int block_size; int rear_size; } ;


 int Q40Interrupt ;
 int Q40MonoInterrupt ;
 int Q40StereoInterrupt ;
 int Q40_IRQ_SAMPLE ;
 int SAMPLE_CLEAR_REG ;
 int SAMPLE_ENABLE_REG ;
 int SAMPLE_RATE_REG ;
 TYPE_4__ dmasound ;
 int free_irq (int ,int ) ;
 int master_outb (int,int ) ;
 int pr_err (char*) ;
 scalar_t__ printk_ratelimit () ;
 int* q40_pp ;
 int q40_sc ;
 int request_irq (int ,int ,int ,char*,int ) ;
 TYPE_3__ write_sq ;

__attribute__((used)) static void Q40PlayNextFrame(int index)
{
 u_char *start;
 u_long size;
 u_char speed;
 int error;




 start = write_sq.buffers[write_sq.front];
 size = (write_sq.count == index ? write_sq.rear_size : write_sq.block_size);

 q40_pp=start;
 q40_sc=size;

 write_sq.front = (write_sq.front+1) % write_sq.max_count;
 write_sq.active++;

 speed=(dmasound.hard.speed==10000 ? 0 : 1);

 master_outb( 0,SAMPLE_ENABLE_REG);
 free_irq(Q40_IRQ_SAMPLE, Q40Interrupt);
 if (dmasound.soft.stereo)
  error = request_irq(Q40_IRQ_SAMPLE, Q40StereoInterrupt, 0,
        "Q40 sound", Q40Interrupt);
   else
  error = request_irq(Q40_IRQ_SAMPLE, Q40MonoInterrupt, 0,
        "Q40 sound", Q40Interrupt);
 if (error && printk_ratelimit())
  pr_err("Couldn't register sound interrupt\n");

 master_outb( speed, SAMPLE_RATE_REG);
 master_outb( 1,SAMPLE_CLEAR_REG);
 master_outb( 1,SAMPLE_ENABLE_REG);
}
