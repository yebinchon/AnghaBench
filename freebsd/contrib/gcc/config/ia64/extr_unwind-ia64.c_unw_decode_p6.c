
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P6 ;
 int UNW_DEC_FR_MEM (int ,unsigned char,void*) ;
 int UNW_DEC_GR_MEM (int ,unsigned char,void*) ;

__attribute__((used)) static unsigned char *
unw_decode_p6 (unsigned char *dp, unsigned char code, void *arg)
{
  int gregs = (code & 0x10) != 0;
  unsigned char mask = (code & 0x0f);

  if (gregs)
    UNW_DEC_GR_MEM(P6, mask, arg);
  else
    UNW_DEC_FR_MEM(P6, mask, arg);
  return dp;
}
