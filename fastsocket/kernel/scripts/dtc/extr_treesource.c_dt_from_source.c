
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct boot_info {int dummy; } ;
struct TYPE_3__ {int file; } ;


 int die (char*) ;
 TYPE_1__* dtc_open_file (char const*,int *) ;
 TYPE_1__* srcpos_file ;
 struct boot_info* the_boot_info ;
 scalar_t__ treesource_error ;
 int yyin ;
 scalar_t__ yyparse () ;

struct boot_info *dt_from_source(const char *fname)
{
 the_boot_info = ((void*)0);
 treesource_error = 0;

 srcpos_file = dtc_open_file(fname, ((void*)0));
 yyin = srcpos_file->file;

 if (yyparse() != 0)
  die("Unable to parse input tree\n");

 if (treesource_error)
  die("Syntax error parsing input tree\n");

 return the_boot_info;
}
