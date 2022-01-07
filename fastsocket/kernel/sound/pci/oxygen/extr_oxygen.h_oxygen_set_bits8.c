
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int oxygen_write8_masked (struct oxygen*,unsigned int,int ,int ) ;

__attribute__((used)) static inline void oxygen_set_bits8(struct oxygen *chip,
        unsigned int reg, u8 value)
{
 oxygen_write8_masked(chip, reg, value, value);
}
