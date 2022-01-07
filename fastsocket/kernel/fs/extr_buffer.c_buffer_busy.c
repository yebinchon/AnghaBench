
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_state; int b_count; } ;


 int BH_Dirty ;
 int BH_Lock ;
 int atomic_read (int *) ;

__attribute__((used)) static inline int buffer_busy(struct buffer_head *bh)
{
 return atomic_read(&bh->b_count) |
  (bh->b_state & ((1 << BH_Dirty) | (1 << BH_Lock)));
}
