
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {scalar_t__ iobase; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int hdspm_read(struct hdspm * hdspm, unsigned int reg)
{
 return readl(hdspm->iobase + reg);
}
