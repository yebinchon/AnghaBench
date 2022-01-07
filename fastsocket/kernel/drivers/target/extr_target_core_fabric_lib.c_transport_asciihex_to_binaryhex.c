
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char transport_asciihex_to_binaryhex(unsigned char val[2])
{
 unsigned char result = 0;



 if ((val[0] >= 'a') && (val[0] <= 'f'))
  result = ((val[0] - 'a' + 10) & 0xf) << 4;
 else
  if ((val[0] >= 'A') && (val[0] <= 'F'))
   result = ((val[0] - 'A' + 10) & 0xf) << 4;
  else
   result = ((val[0] - '0') & 0xf) << 4;



 if ((val[1] >= 'a') && (val[1] <= 'f'))
  result |= ((val[1] - 'a' + 10) & 0xf);
 else
  if ((val[1] >= 'A') && (val[1] <= 'F'))
   result |= ((val[1] - 'A' + 10) & 0xf);
  else
   result |= ((val[1] - '0') & 0xf);

 return result;
}
