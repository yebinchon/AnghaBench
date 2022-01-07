
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ count; int descrtab_phys; unsigned int hwptr; unsigned int swptr; int wait; scalar_t__ mapped; } ;
struct cs4297a_state {TYPE_1__ dma_dac; int lock; } ;
typedef int serdma_descr_t ;
struct TYPE_6__ {int state; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_2__*) ;
 int EBUSY ;
 int FRAME_TX_US ;
 int HZ ;
 int M_DMA_CURDSCR_ADDR ;
 int R_SER_DMA_CUR_DSCR_ADDR_TX ;
 int R_SER_DMA_DSCR_COUNT_TX ;
 int SS_CSR (int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __raw_readq (int ) ;
 int add_wait_queue (int *,int *) ;
 TYPE_2__* current ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (unsigned int) ;
 int set_current_state (int ) ;
 int signal_pending (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait ;

__attribute__((used)) static int drain_dac(struct cs4297a_state *s, int nonblock)
{
 DECLARE_WAITQUEUE(wait, current);
 unsigned long flags;
        unsigned hwptr;
 unsigned tmo;
 int count;

 if (s->dma_dac.mapped)
  return 0;
        if (nonblock)
                return -EBUSY;
 add_wait_queue(&s->dma_dac.wait, &wait);
        while ((count = __raw_readq(SS_CSR(R_SER_DMA_DSCR_COUNT_TX))) ||
               (s->dma_dac.count > 0)) {
                if (!signal_pending(current)) {
                        set_current_state(TASK_INTERRUPTIBLE);

                        tmo = ((count * FRAME_TX_US) * HZ) / 1000000;
                        schedule_timeout(tmo + 1);
                } else {

                }
        }
        spin_lock_irqsave(&s->lock, flags);

        hwptr = (int)(((__raw_readq(SS_CSR(R_SER_DMA_CUR_DSCR_ADDR_TX)) & M_DMA_CURDSCR_ADDR) -
                       s->dma_dac.descrtab_phys) / sizeof(serdma_descr_t));
        s->dma_dac.hwptr = s->dma_dac.swptr = hwptr;
        spin_unlock_irqrestore(&s->lock, flags);
 remove_wait_queue(&s->dma_dac.wait, &wait);
 current->state = TASK_RUNNING;
 return 0;
}
