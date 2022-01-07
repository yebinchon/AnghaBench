
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tail; int string; } ;
struct filter_parse_state {TYPE_1__ operand; } ;


 int MAX_FILTER_STR_VAL ;
 int memset (int ,char,int ) ;

__attribute__((used)) static inline void clear_operand_string(struct filter_parse_state *ps)
{
 memset(ps->operand.string, '\0', MAX_FILTER_STR_VAL);
 ps->operand.tail = 0;
}
