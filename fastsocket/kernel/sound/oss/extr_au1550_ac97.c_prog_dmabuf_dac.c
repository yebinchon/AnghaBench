
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1550_state {int dma_dac; } ;


 int prog_dmabuf (struct au1550_state*,int *) ;
 int stop_dac (struct au1550_state*) ;

__attribute__((used)) static int
prog_dmabuf_dac(struct au1550_state *s)
{
 stop_dac(s);
 return prog_dmabuf(s, &s->dma_dac);
}
