
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ __crc (scalar_t__*) ;

__attribute__((used)) static inline u8 __fcs(u8 *data)
{
 return (0xff - __crc(data));
}
