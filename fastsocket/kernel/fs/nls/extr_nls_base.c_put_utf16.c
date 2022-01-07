
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef enum utf16_endian { ____Placeholder_utf16_endian } utf16_endian ;




 int __cpu_to_be16 (unsigned int) ;
 int __cpu_to_le16 (unsigned int) ;

__attribute__((used)) static inline void put_utf16(wchar_t *s, unsigned c, enum utf16_endian endian)
{
 switch (endian) {
 default:
  *s = (wchar_t) c;
  break;
 case 128:
  *s = __cpu_to_le16(c);
  break;
 case 129:
  *s = __cpu_to_be16(c);
  break;
 }
}
