
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u16 bt431_set_value(u8 val)
{
 return ((val << 8) | (val & 0xff)) & 0xffff;
}
