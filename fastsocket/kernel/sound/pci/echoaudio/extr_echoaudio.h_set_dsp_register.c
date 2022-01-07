
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct echoaudio {int * dsp_registers; } ;


 int writel (size_t,int *) ;

__attribute__((used)) static inline void set_dsp_register(struct echoaudio *chip, u32 index,
        u32 value)
{
 writel(value, &chip->dsp_registers[index]);
}
