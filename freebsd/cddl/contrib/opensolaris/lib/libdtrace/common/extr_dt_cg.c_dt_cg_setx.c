
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dt_irlist_t ;


 int DT_LBL_NONE ;
 int dt_cg_xsetx (int *,int *,int ,int,int ) ;

__attribute__((used)) static void
dt_cg_setx(dt_irlist_t *dlp, int reg, uint64_t x)
{
 dt_cg_xsetx(dlp, ((void*)0), DT_LBL_NONE, reg, x);
}
