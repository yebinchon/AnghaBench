
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oxygen {int dummy; } ;


 int oxygen_write32_masked (struct oxygen*,unsigned int,int ,int ) ;

__attribute__((used)) static inline void oxygen_set_bits32(struct oxygen *chip,
         unsigned int reg, u32 value)
{
 oxygen_write32_masked(chip, reg, value, value);
}
