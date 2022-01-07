
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* filename; } ;
typedef TYPE_1__ lang_input_statement_type ;
struct TYPE_5__ {int map_file; } ;


 TYPE_3__ config ;
 int fprintf (int ,char*,char*) ;

__attribute__((used)) static void
print_input_statement (lang_input_statement_type *statm)
{
  if (statm->filename != ((void*)0))
    {
      fprintf (config.map_file, "LOAD %s\n", statm->filename);
    }
}
