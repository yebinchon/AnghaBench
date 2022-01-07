
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLIZZARD_DATA_SOURCE_SELECT ;
 int BLIZZARD_SRC_DISABLE_OVERLAY ;
 int blizzard_write_reg (int ,int ) ;

__attribute__((used)) static void disable_overlay(void)
{
 blizzard_write_reg(BLIZZARD_DATA_SOURCE_SELECT,
    BLIZZARD_SRC_DISABLE_OVERLAY);
}
