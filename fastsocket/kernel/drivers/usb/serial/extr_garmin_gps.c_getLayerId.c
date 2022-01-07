
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __le32 ;


 int __le32_to_cpup (int *) ;

__attribute__((used)) static inline int getLayerId(const __u8 *usbPacket)
{
 return __le32_to_cpup((__le32 *)(usbPacket));
}
