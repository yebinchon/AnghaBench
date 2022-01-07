
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int believe_pcc_promotion_type; } ;



void
set_gdbarch_believe_pcc_promotion_type (struct gdbarch *gdbarch,
                                        int believe_pcc_promotion_type)
{
  gdbarch->believe_pcc_promotion_type = believe_pcc_promotion_type;
}
