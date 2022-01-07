
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; char* string; } ;
struct filter_parse_state {TYPE_1__ operand; } ;


 int EINVAL ;
 int MAX_FILTER_STR_VAL ;

__attribute__((used)) static inline int append_operand_char(struct filter_parse_state *ps, char c)
{
 if (ps->operand.tail == MAX_FILTER_STR_VAL - 1)
  return -EINVAL;

 ps->operand.string[ps->operand.tail++] = c;

 return 0;
}
