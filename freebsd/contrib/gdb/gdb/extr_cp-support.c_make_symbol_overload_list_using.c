
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct using_direct {char* inner; int outer; struct using_direct* next; } ;


 char* alloca (scalar_t__) ;
 struct using_direct* block_using (int ) ;
 int get_selected_block (int ) ;
 int make_symbol_overload_list_qualified (char const*) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
make_symbol_overload_list_using (const char *func_name,
     const char *namespace)
{
  const struct using_direct *current;





  for (current = block_using (get_selected_block (0));
       current != ((void*)0);
       current = current->next)
    {
      if (strcmp (namespace, current->outer) == 0)
 {
   make_symbol_overload_list_using (func_name,
        current->inner);
 }
    }



  if (namespace[0] == '\0')
    {
      make_symbol_overload_list_qualified (func_name);
    }
  else
    {
      char *concatenated_name
 = alloca (strlen (namespace) + 2 + strlen (func_name) + 1);
      strcpy (concatenated_name, namespace);
      strcat (concatenated_name, "::");
      strcat (concatenated_name, func_name);
      make_symbol_overload_list_qualified (concatenated_name);
    }
}
