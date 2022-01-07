
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* dump_info_p ;
struct TYPE_3__ {char* column; int stream; } ;


 char* SOL_COLUMN ;
 int fprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void
dump_new_line (dump_info_p di)
{
  fprintf (di->stream, "\n%*s", SOL_COLUMN, "");
  di->column = SOL_COLUMN;
}
