
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_parse_state {int lasterr; int lasterr_pos; } ;



__attribute__((used)) static void parse_error(struct filter_parse_state *ps, int err, int pos)
{
 ps->lasterr = err;
 ps->lasterr_pos = pos;
}
