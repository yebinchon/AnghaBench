
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int clear_bit (int ,int ) ;
 int prioidx_map ;
 int prioidx_map_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void put_prioidx(u32 idx)
{
 unsigned long flags;

 spin_lock_irqsave(&prioidx_map_lock, flags);
 clear_bit(idx, prioidx_map);
 spin_unlock_irqrestore(&prioidx_map_lock, flags);
}
