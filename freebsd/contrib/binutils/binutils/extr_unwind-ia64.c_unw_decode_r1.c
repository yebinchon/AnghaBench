
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int unw_word ;


 int UNW_DEC_PROLOGUE (char*,int,unsigned int,void*) ;

__attribute__((used)) static const unsigned char *
unw_decode_r1 (const unsigned char *dp, unsigned int code, void *arg)
{
  int body = (code & 0x20) != 0;
  unw_word rlen;

  rlen = (code & 0x1f);
  UNW_DEC_PROLOGUE ("R1", body, rlen, arg);
  return dp;
}
