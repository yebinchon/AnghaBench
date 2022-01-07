
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct intel8x0 {scalar_t__ addr; } ;


 int ioread16 (scalar_t__) ;

__attribute__((used)) static inline u16 iagetword(struct intel8x0 *chip, u32 offset)
{
 return ioread16(chip->addr + offset);
}
