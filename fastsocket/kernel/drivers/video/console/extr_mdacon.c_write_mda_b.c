
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mda_index_port ;
 int mda_lock ;
 int mda_value_port ;
 int outb_p (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void write_mda_b(unsigned int val, unsigned char reg)
{
 unsigned long flags;

 spin_lock_irqsave(&mda_lock, flags);

 outb_p(reg, mda_index_port);
 outb_p(val, mda_value_port);

 spin_unlock_irqrestore(&mda_lock, flags);
}
