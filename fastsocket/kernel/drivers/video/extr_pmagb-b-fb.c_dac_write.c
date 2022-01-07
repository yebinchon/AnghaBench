
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmagbbfb_par {scalar_t__ dac; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void dac_write(struct pmagbbfb_par *par, unsigned int reg, u8 v)
{
 writeb(v, par->dac + reg / 4);
}
