
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_GCR ;
 int gx1_read_conf_reg (int ) ;

unsigned gx1_gx_base(void)
{
 return (gx1_read_conf_reg(CONFIG_GCR) & 0x03) << 30;
}
