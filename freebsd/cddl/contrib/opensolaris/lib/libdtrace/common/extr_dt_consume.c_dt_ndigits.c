
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long INT64_MAX ;
 long long INT64_MIN ;

__attribute__((used)) static int
dt_ndigits(long long val)
{
 int rval = 1;
 long long cmp = 10;

 if (val < 0) {
  val = val == INT64_MIN ? INT64_MAX : -val;
  rval++;
 }

 while (val > cmp && cmp > 0) {
  rval++;
  cmp *= 10;
 }

 return (rval < 4 ? 4 : rval);
}
