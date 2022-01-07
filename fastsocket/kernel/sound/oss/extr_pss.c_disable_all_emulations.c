
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_CDROM ;
 int CONF_MIDI ;
 int CONF_PSS ;
 int CONF_SB ;
 int CONF_WSS ;
 int REG (int ) ;
 int outw (int,int ) ;

__attribute__((used)) static void disable_all_emulations(void)
{
 outw(0x0000, REG(CONF_PSS));
 outw(0x0000, REG(CONF_WSS));
 outw(0x0000, REG(CONF_SB));
 outw(0x0000, REG(CONF_MIDI));
 outw(0x0000, REG(CONF_CDROM));
}
