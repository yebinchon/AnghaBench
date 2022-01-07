
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double period_ratio_delta; double period_ratio; scalar_t__ wdiff; } ;
struct hist_entry {TYPE_1__ diff; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ int64_t ;


 int BUG_ON (int) ;



 scalar_t__ cmp_doubles (double,double) ;

__attribute__((used)) static int64_t
hist_entry__cmp_compute(struct hist_entry *left, struct hist_entry *right,
   int c)
{
 switch (c) {
 case 130:
 {
  double l = left->diff.period_ratio_delta;
  double r = right->diff.period_ratio_delta;

  return cmp_doubles(l, r);
 }
 case 129:
 {
  double l = left->diff.period_ratio;
  double r = right->diff.period_ratio;

  return cmp_doubles(l, r);
 }
 case 128:
 {
  s64 l = left->diff.wdiff;
  s64 r = right->diff.wdiff;

  return r - l;
 }
 default:
  BUG_ON(1);
 }

 return 0;
}
