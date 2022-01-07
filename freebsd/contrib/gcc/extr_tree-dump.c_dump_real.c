
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dump_info_p ;
typedef int buf ;
struct TYPE_4__ {int column; int stream; } ;
typedef int REAL_VALUE_TYPE ;


 int dump_maybe_newline (TYPE_1__*) ;
 int fprintf (int ,char*,char const*,char*) ;
 int real_to_decimal (char*,int const*,int,int ,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
dump_real (dump_info_p di, const char *field, const REAL_VALUE_TYPE *r)
{
  char buf[32];
  real_to_decimal (buf, r, sizeof (buf), 0, 1);
  dump_maybe_newline (di);
  fprintf (di->stream, "%-4s: %s ", field, buf);
  di->column += strlen (buf) + 7;
}
