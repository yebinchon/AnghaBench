
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel8x0 {scalar_t__ bmaddr; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void iputdword(struct intel8x0 *chip, u32 offset, u32 val)
{
 iowrite32(val, chip->bmaddr + offset);
}
