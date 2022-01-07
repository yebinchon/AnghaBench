
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;





 int IRDA_TRANS ;

__attribute__((used)) static inline int stuff_byte(__u8 byte, __u8 *buf)
{
 switch (byte) {
 case 130:
 case 128:
 case 129:

  buf[0] = 129;
  buf[1] = byte^IRDA_TRANS;
  return 2;

 default:

  buf[0] = byte;
  return 1;

 }
}
