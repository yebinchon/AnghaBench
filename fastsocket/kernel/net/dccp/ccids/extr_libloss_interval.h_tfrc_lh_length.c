
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tfrc_loss_hist {int counter; } ;


 scalar_t__ LIH_SIZE ;
 int min (int ,int ) ;

__attribute__((used)) static inline u8 tfrc_lh_length(struct tfrc_loss_hist *lh)
{
 return min(lh->counter, (u8)LIH_SIZE);
}
