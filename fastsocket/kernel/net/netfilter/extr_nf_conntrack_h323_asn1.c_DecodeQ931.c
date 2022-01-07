
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int UUIE; int MessageType; } ;
typedef TYPE_1__ Q931 ;


 int DecodeH323_UserInformation (unsigned char*,unsigned char*,int,int *) ;
 int H323_ERROR_BOUND ;
 int H323_ERROR_RANGE ;
 int PRINT (char*,...) ;

int DecodeQ931(unsigned char *buf, size_t sz, Q931 *q931)
{
 unsigned char *p = buf;
 int len;

 if (!p || sz < 1)
  return H323_ERROR_BOUND;


 if (*p != 0x08) {
  PRINT("Unknown Protocol Discriminator\n");
  return H323_ERROR_RANGE;
 }
 p++;
 sz--;


 if (sz < 1)
  return H323_ERROR_BOUND;
 len = *p++;
 sz--;
 if (sz < len)
  return H323_ERROR_BOUND;
 p += len;
 sz -= len;


 if (sz < 1)
  return H323_ERROR_BOUND;
 q931->MessageType = *p++;
 PRINT("MessageType = %02X\n", q931->MessageType);
 if (*p & 0x80) {
  p++;
  sz--;
 }


 while (sz > 0) {
  if (*p == 0x7e) {
   if (sz < 3)
    break;
   p++;
   len = *p++ << 8;
   len |= *p++;
   sz -= 3;
   if (sz < len)
    break;
   p++;
   len--;
   return DecodeH323_UserInformation(buf, p, len,
         &q931->UUIE);
  }
  p++;
  sz--;
  if (sz < 1)
   break;
  len = *p++;
  if (sz < len)
   break;
  p += len;
  sz -= len;
 }

 PRINT("Q.931 UUIE not found\n");

 return H323_ERROR_BOUND;
}
