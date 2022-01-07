
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int UNW_DEC_PROLOGUE (char*,int,int ,void*) ;
 int unw_decode_uleb128 (unsigned char const**) ;

__attribute__((used)) static const unsigned char *
unw_decode_r3 (const unsigned char *dp, unsigned int code, void *arg)
{
  unw_word rlen;

  rlen = unw_decode_uleb128 (& dp);
  UNW_DEC_PROLOGUE ("R3", ((code & 0x3) == 1), rlen, arg);
  return dp;
}
