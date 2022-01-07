
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_reg_info {unsigned long val; int where; int when; } ;
typedef enum unw_where { ____Placeholder_unw_where } unw_where ;


 int UNW_WHEN_NEVER ;

__attribute__((used)) static void
set_reg (struct unw_reg_info *reg, enum unw_where where,
  int when, unsigned long val)
{
  reg->val = val;
  reg->where = where;
  if (reg->when == UNW_WHEN_NEVER)
    reg->when = when;
}
