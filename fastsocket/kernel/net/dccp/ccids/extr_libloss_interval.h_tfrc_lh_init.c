
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfrc_loss_hist {int dummy; } ;


 int memset (struct tfrc_loss_hist*,int ,int) ;

__attribute__((used)) static inline void tfrc_lh_init(struct tfrc_loss_hist *lh)
{
 memset(lh, 0, sizeof(struct tfrc_loss_hist));
}
