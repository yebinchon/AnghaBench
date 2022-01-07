
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_range {scalar_t__ sbit; unsigned long ebit; } ;


 int ASSERT (int) ;
 scalar_t__ MAX_BITPOS ;

__attribute__((used)) static unsigned long
apply_range (unsigned long rval, struct itbl_range r)
{
  unsigned long mask;
  unsigned long aval;
  int len = MAX_BITPOS - r.sbit;

  ASSERT (r.sbit >= r.ebit);
  ASSERT (MAX_BITPOS >= r.sbit);
  ASSERT (r.ebit >= 0);


  mask = 0xffffffff << len;
  mask = mask >> len;
  mask = mask >> r.ebit;
  mask = mask << r.ebit;

  aval = (rval << r.ebit) & mask;
  return aval;
}
