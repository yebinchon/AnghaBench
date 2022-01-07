
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ULONG ;
typedef unsigned char UCHAR ;



ULONG HashBytesPolynomial(UCHAR *value, unsigned int len)
{
   unsigned char *word = value;
   unsigned int ret = 0;
   unsigned int i;

   for(i=0; i < len; i++)
   {
   int mod = i % 32;
   ret ^=(unsigned int) (word[i]) << mod;
   ret ^=(unsigned int) (word[i]) >> (32 - mod);
   }
   return ret;
}
