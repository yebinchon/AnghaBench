
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {scalar_t__ iobase; } ;


 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static int snd_cmipci_clear_bit(struct cmipci *cm, unsigned int cmd, unsigned int flag)
{
 unsigned int val, oval;
 val = oval = inl(cm->iobase + cmd);
 val &= ~flag;
 if (val == oval)
  return 0;
 outl(val, cm->iobase + cmd);
 return 1;
}
