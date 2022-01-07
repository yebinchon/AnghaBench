
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int NULL_RTX ;
 int extract_mentioned_regs_helper (int ,int ) ;

__attribute__((used)) static rtx
extract_mentioned_regs (rtx x)
{
  return extract_mentioned_regs_helper (x, NULL_RTX);
}
