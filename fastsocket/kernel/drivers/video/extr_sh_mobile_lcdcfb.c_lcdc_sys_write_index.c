
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_chan {int lcdc; } ;


 int _LDDWAR ;
 int _LDDWD0R ;
 int _LDSR ;
 scalar_t__ lcdc_chan_is_sublcd (struct sh_mobile_lcdc_chan*) ;
 int lcdc_wait_bit (int ,int ,int,int ) ;
 int lcdc_write (int ,int ,int) ;

__attribute__((used)) static void lcdc_sys_write_index(void *handle, unsigned long data)
{
 struct sh_mobile_lcdc_chan *ch = handle;

 lcdc_write(ch->lcdc, _LDDWD0R, data | 0x10000000);
 lcdc_wait_bit(ch->lcdc, _LDSR, 2, 0);
 lcdc_write(ch->lcdc, _LDDWAR, 1 | (lcdc_chan_is_sublcd(ch) ? 2 : 0));
 lcdc_wait_bit(ch->lcdc, _LDSR, 2, 0);
}
