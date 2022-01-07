
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENOSPC ;
 int PRIOIDX_SZ ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int find_first_zero_bit (int ,int) ;
 int max_prioidx ;
 int prioidx_map ;
 int prioidx_map_lock ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_prioidx(u32 *prio)
{
 unsigned long flags;
 u32 prioidx;

 spin_lock_irqsave(&prioidx_map_lock, flags);
 prioidx = find_first_zero_bit(prioidx_map, sizeof(unsigned long) * PRIOIDX_SZ);

 if (prioidx == sizeof(unsigned long) * PRIOIDX_SZ) {
  spin_unlock_irqrestore(&prioidx_map_lock, flags);
  return -ENOSPC;
 }

 set_bit(prioidx, prioidx_map);
 if (atomic_read(&max_prioidx) < prioidx)
  atomic_set(&max_prioidx, prioidx);
 spin_unlock_irqrestore(&prioidx_map_lock, flags);

 *prio = prioidx;
 return 0;
}
