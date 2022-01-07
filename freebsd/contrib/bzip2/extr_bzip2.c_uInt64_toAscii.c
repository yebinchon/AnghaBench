
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef char UChar ;
typedef size_t Int32 ;


 int uInt64_isZero (int *) ;
 size_t uInt64_qrm10 (int *) ;

__attribute__((used)) static
void uInt64_toAscii ( char* outbuf, UInt64* n )
{
   Int32 i, q;
   UChar buf[32];
   Int32 nBuf = 0;
   UInt64 n_copy = *n;
   do {
      q = uInt64_qrm10 ( &n_copy );
      buf[nBuf] = q + '0';
      nBuf++;
   } while (!uInt64_isZero(&n_copy));
   outbuf[nBuf] = 0;
   for (i = 0; i < nBuf; i++)
      outbuf[i] = buf[nBuf-i-1];
}
