
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_info {unsigned int io_base; } ;


 unsigned int CTLR ;
 unsigned char inb (unsigned int) ;
 int outb (unsigned char,unsigned int) ;

__attribute__((used)) static inline void
waveartist_set_ctlr(struct address_info *hw, unsigned char clear, unsigned char set)
{
 unsigned int ctlr_port = hw->io_base + CTLR;

 clear = ~clear & inb(ctlr_port);

 outb(clear | set, ctlr_port);
}
