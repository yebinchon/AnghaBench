
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmagbbfb_par {scalar_t__ dac; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 dac_read(struct pmagbbfb_par *par, unsigned int reg)
{
 return readb(par->dac + reg / 4);
}
