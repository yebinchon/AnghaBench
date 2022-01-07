
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {scalar_t__ iobase; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int hdsp_read(struct hdsp *hdsp, int reg)
{
 return readl (hdsp->iobase + reg);
}
