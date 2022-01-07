
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm3_par {int dummy; } ;
struct fb_info {struct pm3_par* par; } ;


 int PM3FilterMode ;
 int PM3FilterModeSync ;
 int PM3OutFIFOWords ;
 int PM3OutputFifo ;
 int PM3Sync ;
 scalar_t__ PM3Sync_Tag ;
 scalar_t__ PM3_READ_REG (struct pm3_par*,int ) ;
 int PM3_WAIT (struct pm3_par*,int) ;
 int PM3_WRITE_REG (struct pm3_par*,int ,int ) ;
 int cpu_relax () ;
 int mb () ;

__attribute__((used)) static int pm3fb_sync(struct fb_info *info)
{
 struct pm3_par *par = info->par;

 PM3_WAIT(par, 2);
 PM3_WRITE_REG(par, PM3FilterMode, PM3FilterModeSync);
 PM3_WRITE_REG(par, PM3Sync, 0);
 mb();
 do {
  while ((PM3_READ_REG(par, PM3OutFIFOWords)) == 0)
   cpu_relax();
 } while ((PM3_READ_REG(par, PM3OutputFifo)) != PM3Sync_Tag);

 return 0;
}
