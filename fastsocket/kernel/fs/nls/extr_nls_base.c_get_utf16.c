
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum utf16_endian { ____Placeholder_utf16_endian } utf16_endian ;




 unsigned long __be16_to_cpu (unsigned int) ;
 unsigned long __le16_to_cpu (unsigned int) ;

__attribute__((used)) static inline unsigned long get_utf16(unsigned c, enum utf16_endian endian)
{
 switch (endian) {
 default:
  return c;
 case 128:
  return __le16_to_cpu(c);
 case 129:
  return __be16_to_cpu(c);
 }
}
