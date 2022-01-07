
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {scalar_t__ iobase; } ;


 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void snd_cmipci_write(struct cmipci *cm, unsigned int cmd, unsigned int data)
{
 outl(data, cm->iobase + cmd);
}
