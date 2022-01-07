
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htab {int dummy; } ;
struct function {TYPE_1__* eh; } ;
struct TYPE_2__ {struct htab* throw_stmt_table; } ;



void
set_eh_throw_stmt_table (struct function *fun, struct htab *table)
{
  fun->eh->throw_stmt_table = table;
}
