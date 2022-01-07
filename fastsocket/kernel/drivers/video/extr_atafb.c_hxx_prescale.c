
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_hw {int vid_mode; scalar_t__ ste_mode; } ;


 size_t mon_type ;
 int** vdl_prescale ;

__attribute__((used)) static inline int hxx_prescale(struct falcon_hw *hw)
{
 return hw->ste_mode ? 16
       : vdl_prescale[mon_type][hw->vid_mode >> 2 & 0x3];
}
