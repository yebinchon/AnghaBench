
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tdfx_par {int dummy; } ;


 int DACADDR ;
 int DACDATA ;
 int banshee_make_room (struct tdfx_par*,int) ;
 int tdfx_inl (struct tdfx_par*,int ) ;
 int tdfx_outl (struct tdfx_par*,int ,unsigned int) ;

__attribute__((used)) static inline void do_setpalentry(struct tdfx_par *par, unsigned regno, u32 c)
{
 banshee_make_room(par, 2);
 tdfx_outl(par, DACADDR, regno);

 tdfx_inl(par, DACADDR);
 tdfx_outl(par, DACDATA, c);
}
