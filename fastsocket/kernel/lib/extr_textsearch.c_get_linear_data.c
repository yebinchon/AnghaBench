
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_state {scalar_t__ cb; } ;
struct ts_linear_state {unsigned int len; int * data; } ;
struct ts_config {int dummy; } ;


 scalar_t__ likely (int) ;

__attribute__((used)) static unsigned int get_linear_data(unsigned int consumed, const u8 **dst,
        struct ts_config *conf,
        struct ts_state *state)
{
 struct ts_linear_state *st = (struct ts_linear_state *) state->cb;

 if (likely(consumed < st->len)) {
  *dst = st->data + consumed;
  return st->len - consumed;
 }

 return 0;
}
