
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 Mk16_le(u16 *v)
{
 return le16_to_cpu(*v);
}
