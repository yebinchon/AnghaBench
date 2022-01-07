
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int ) ;
 int VOIDmode ;
 int gen_rtx_SET (int ,int ,int ) ;

__attribute__((used)) static rtx
gen_safe_SET64 (rtx dest, HOST_WIDE_INT val)
{
  return gen_rtx_SET (VOIDmode, dest, GEN_INT (val));
}
