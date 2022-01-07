
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int B2 ;
 int UNW_DEC_EPILOGUE (int ,int ,unsigned char,void*) ;
 int unw_decode_uleb128 (unsigned char**) ;

__attribute__((used)) static unsigned char *
unw_decode_b2 (unsigned char *dp, unsigned char code, void *arg)
{
  unw_word t;

  t = unw_decode_uleb128 (&dp);
  UNW_DEC_EPILOGUE(B2, t, (code & 0x1f), arg);
  return dp;
}
