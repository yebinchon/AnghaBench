
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 unsigned int OXYGEN_PLAY_DAC0_SOURCE_MASK ;
 int OXYGEN_PLAY_DAC0_SOURCE_SHIFT ;
 int OXYGEN_PLAY_DAC1_SOURCE_MASK ;
 int OXYGEN_PLAY_DAC1_SOURCE_SHIFT ;
 int OXYGEN_PLAY_DAC2_SOURCE_MASK ;
 int OXYGEN_PLAY_DAC2_SOURCE_SHIFT ;
 int OXYGEN_PLAY_DAC3_SOURCE_MASK ;
 int OXYGEN_PLAY_DAC3_SOURCE_SHIFT ;
 unsigned int shift_bits (unsigned int,int ,int ,int ) ;

__attribute__((used)) static unsigned int adjust_dg_dac_routing(struct oxygen *chip,
       unsigned int play_routing)
{
 return (play_routing & OXYGEN_PLAY_DAC0_SOURCE_MASK) |
        shift_bits(play_routing,
     OXYGEN_PLAY_DAC2_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC1_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC1_SOURCE_MASK) |
        shift_bits(play_routing,
     OXYGEN_PLAY_DAC1_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC2_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC2_SOURCE_MASK) |
        shift_bits(play_routing,
     OXYGEN_PLAY_DAC0_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC3_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC3_SOURCE_MASK);
}
