
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum debug_level_t { ____Placeholder_debug_level_t } debug_level_t ;
typedef int FILE ;


 int BUG_ON (int) ;




 int * _stddbg ;
 int * _stderr ;
 int * _stdout ;

FILE *dbg_lvl_to_fh(const enum debug_level_t lvl)
{
 switch (lvl) {
 case 131:
 case 128:
  return _stderr;
 case 130:
  return _stdout;
 case 129:
  return _stddbg;
 default:
  BUG_ON(1);
 }
}
