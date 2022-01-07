
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int dummy; } ;


 int BUG_ON (int) ;



 int compute ;
 int formula_delta (struct hist_entry*,char*,size_t) ;
 int formula_ratio (struct hist_entry*,char*,size_t) ;
 int formula_wdiff (struct hist_entry*,char*,size_t) ;

int perf_diff__formula(char *buf, size_t size, struct hist_entry *he)
{
 switch (compute) {
 case 130:
  return formula_delta(he, buf, size);
 case 129:
  return formula_ratio(he, buf, size);
 case 128:
  return formula_wdiff(he, buf, size);
 default:
  BUG_ON(1);
 }

 return -1;
}
