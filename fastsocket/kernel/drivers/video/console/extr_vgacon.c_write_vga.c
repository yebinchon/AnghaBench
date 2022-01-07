
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb_p (unsigned int,int ) ;
 int outw (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vga_lock ;
 int vga_video_port_reg ;
 int vga_video_port_val ;

__attribute__((used)) static inline void write_vga(unsigned char reg, unsigned int val)
{
 unsigned int v1, v2;
 unsigned long flags;





 spin_lock_irqsave(&vga_lock, flags);


 v1 = reg + (val & 0xff00);
 v2 = reg + 1 + ((val << 8) & 0xff00);
 outw(v1, vga_video_port_reg);
 outw(v2, vga_video_port_reg);






 spin_unlock_irqrestore(&vga_lock, flags);
}
