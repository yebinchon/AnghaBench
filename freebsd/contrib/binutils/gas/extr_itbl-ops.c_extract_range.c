
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_range {int sbit; unsigned long ebit; } ;


 int MAX_BITPOS ;

__attribute__((used)) static unsigned long
extract_range (unsigned long aval, struct itbl_range r)
{
  unsigned long mask;
  unsigned long rval;
  int len = MAX_BITPOS - r.sbit;


  mask = 0xffffffff << len;
  mask = mask >> len;
  mask = mask >> r.ebit;
  mask = mask << r.ebit;

  rval = (aval & mask) >> r.ebit;
  return rval;
}
