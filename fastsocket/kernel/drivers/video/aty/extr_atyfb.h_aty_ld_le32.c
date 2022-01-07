
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atyfb_par {scalar_t__ ati_regbase; } ;


 int in_le32 (scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 aty_ld_le32(int regindex, const struct atyfb_par *par)
{

 if (regindex >= 0x400)
  regindex -= 0x800;




 return readl(par->ati_regbase + regindex);

}
