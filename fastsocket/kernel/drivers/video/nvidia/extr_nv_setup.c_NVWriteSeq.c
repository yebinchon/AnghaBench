
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {int PVIO; } ;


 int VGA_SEQ_D ;
 int VGA_SEQ_I ;
 int VGA_WR08 (int ,int ,int ) ;

void NVWriteSeq(struct nvidia_par *par, u8 index, u8 value)
{
 VGA_WR08(par->PVIO, VGA_SEQ_I, index);
 VGA_WR08(par->PVIO, VGA_SEQ_D, value);
}
