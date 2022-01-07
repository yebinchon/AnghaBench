
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_chan {int lcdc; } ;


 int _LDDRAR ;
 int _LDDRDR ;
 int _LDSR ;
 scalar_t__ lcdc_chan_is_sublcd (struct sh_mobile_lcdc_chan*) ;
 int lcdc_read (int ,int ) ;
 int lcdc_wait_bit (int ,int ,int,int ) ;
 int lcdc_write (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static unsigned long lcdc_sys_read_data(void *handle)
{
 struct sh_mobile_lcdc_chan *ch = handle;

 lcdc_write(ch->lcdc, _LDDRDR, 0x01000000);
 lcdc_wait_bit(ch->lcdc, _LDSR, 2, 0);
 lcdc_write(ch->lcdc, _LDDRAR, 1 | (lcdc_chan_is_sublcd(ch) ? 2 : 0));
 udelay(1);
 lcdc_wait_bit(ch->lcdc, _LDSR, 2, 0);

 return lcdc_read(ch->lcdc, _LDDRDR) & 0x3ffff;
}
