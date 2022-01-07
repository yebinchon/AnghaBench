
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GA_CDCFG_REG ;
 int GA_HMCTL_REG ;
 int sscape_read_unsafe (unsigned int,int ) ;
 int sscape_write_unsafe (unsigned int,int ,int) ;

__attribute__((used)) static inline void activate_ad1845_unsafe(unsigned io_base)
{
 sscape_write_unsafe(io_base, GA_HMCTL_REG, (sscape_read_unsafe(io_base, GA_HMCTL_REG) & 0xcf) | 0x10);
 sscape_write_unsafe(io_base, GA_CDCFG_REG, 0x80);
}
