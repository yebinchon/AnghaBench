
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filter_parse_state {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ precedence; } ;



__attribute__((used)) static inline int is_precedence_lower(struct filter_parse_state *ps,
          int a, int b)
{
 return ps->ops[a].precedence < ps->ops[b].precedence;
}
