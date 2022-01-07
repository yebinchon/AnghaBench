
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char unw_word ;


 int B1 ;
 int UNW_DEC_COPY_STATE (int ,unsigned char,void*) ;
 int UNW_DEC_LABEL_STATE (int ,unsigned char,void*) ;

__attribute__((used)) static unsigned char *
unw_decode_b1 (unsigned char *dp, unsigned char code, void *arg)
{
  unw_word label = (code & 0x1f);

  if ((code & 0x20) != 0)
    UNW_DEC_COPY_STATE(B1, label, arg);
  else
    UNW_DEC_LABEL_STATE(B1, label, arg);
  return dp;
}
