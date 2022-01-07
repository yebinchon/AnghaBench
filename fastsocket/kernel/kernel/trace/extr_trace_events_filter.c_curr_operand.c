
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; } ;
struct filter_parse_state {TYPE_1__ operand; } ;



__attribute__((used)) static char *curr_operand(struct filter_parse_state *ps)
{
 return ps->operand.string;
}
