
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel8x0m {scalar_t__ bmaddr; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 igetdword(struct intel8x0m *chip, u32 offset)
{
 return ioread32(chip->bmaddr + offset);
}
