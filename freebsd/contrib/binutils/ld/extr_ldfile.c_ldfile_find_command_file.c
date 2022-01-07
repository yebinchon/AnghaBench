
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; struct TYPE_3__* next; } ;
typedef TYPE_1__ search_dirs_type ;
typedef int FILE ;


 TYPE_1__* search_head ;
 char* slash ;
 int sprintf (char*,char*,char*,char*,char const*) ;
 int * try_open (char const*,char const*) ;

__attribute__((used)) static FILE *
ldfile_find_command_file (const char *name, const char *extend)
{
  search_dirs_type *search;
  FILE *result;
  char buffer[1000];


  result = try_open (name, "");
  if (result == ((void*)0))
    {

      for (search = search_head; search != ((void*)0); search = search->next)
 {
   sprintf (buffer, "%s%s%s", search->name, slash, name);

   result = try_open (buffer, extend);
   if (result)
     break;
 }
    }

  return result;
}
