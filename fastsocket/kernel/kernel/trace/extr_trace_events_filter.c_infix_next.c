
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; int tail; int cnt; } ;
struct filter_parse_state {TYPE_1__ infix; } ;



__attribute__((used)) static char infix_next(struct filter_parse_state *ps)
{
 ps->infix.cnt--;

 return ps->infix.string[ps->infix.tail++];
}
