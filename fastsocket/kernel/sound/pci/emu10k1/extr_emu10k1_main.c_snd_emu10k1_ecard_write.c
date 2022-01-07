
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {unsigned long port; } ;


 unsigned short EC_NUM_CONTROL_BITS ;
 unsigned int HANDN_BIT ;
 unsigned long HCFG ;
 unsigned int HOOKN_BIT ;
 unsigned int PULSEN_BIT ;
 unsigned int inl (unsigned long) ;
 int outl (unsigned int,unsigned long) ;

__attribute__((used)) static void snd_emu10k1_ecard_write(struct snd_emu10k1 *emu, unsigned int value)
{
 unsigned short count;
 unsigned int data;
 unsigned long hc_port;
 unsigned int hc_value;

 hc_port = emu->port + HCFG;
 hc_value = inl(hc_port) & ~(HOOKN_BIT | HANDN_BIT | PULSEN_BIT);
 outl(hc_value, hc_port);

 for (count = 0; count < EC_NUM_CONTROL_BITS; count++) {


  data = ((value & 0x1) ? PULSEN_BIT : 0);
  value >>= 1;

  outl(hc_value | data, hc_port);


  outl(hc_value | data | HANDN_BIT, hc_port);
  outl(hc_value | data, hc_port);
 }


 outl(hc_value | HOOKN_BIT, hc_port);
 outl(hc_value, hc_port);
}
