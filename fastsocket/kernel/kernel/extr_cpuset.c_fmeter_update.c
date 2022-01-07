
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct fmeter {scalar_t__ time; int val; int cnt; } ;


 int FM_COEF ;
 int FM_MAXTICKS ;
 int FM_SCALE ;
 scalar_t__ get_seconds () ;
 scalar_t__ min (int ,scalar_t__) ;

__attribute__((used)) static void fmeter_update(struct fmeter *fmp)
{
 time_t now = get_seconds();
 time_t ticks = now - fmp->time;

 if (ticks == 0)
  return;

 ticks = min(FM_MAXTICKS, ticks);
 while (ticks-- > 0)
  fmp->val = (FM_COEF * fmp->val) / FM_SCALE;
 fmp->time = now;

 fmp->val += ((FM_SCALE - FM_COEF) * fmp->cnt) / FM_SCALE;
 fmp->cnt = 0;
}
