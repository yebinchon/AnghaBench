
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct tridentfb_par {scalar_t__ io_virt; } ;


 int fb_readb (scalar_t__) ;

__attribute__((used)) static inline u8 t_inb(struct tridentfb_par *p, u16 reg)
{
 return fb_readb(p->io_virt + reg);
}
