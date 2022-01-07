
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t tail; char* string; } ;
struct filter_parse_state {TYPE_1__ infix; } ;


 size_t strlen (char*) ;

__attribute__((used)) static char infix_peek(struct filter_parse_state *ps)
{
 if (ps->infix.tail == strlen(ps->infix.string))
  return 0;

 return ps->infix.string[ps->infix.tail];
}
