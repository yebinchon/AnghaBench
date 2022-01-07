
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 int gen_rtx_CONST (int ,int ) ;
 int gen_rtx_MINUS (int ,int ,int ) ;

__attribute__((used)) static inline rtx
gen_pic_offset (rtx orig, rtx pic_base)
{
  if (!pic_base)
    return orig;
  else
    return gen_rtx_CONST (Pmode, gen_rtx_MINUS (Pmode, orig, pic_base));
}
