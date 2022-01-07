
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* local_sym_name; int real; scalar_t__ loaded; scalar_t__ next_real_file; } ;
typedef TYPE_1__ lang_input_statement_type ;
struct TYPE_7__ {scalar_t__ head; } ;


 int FALSE ;
 int default_target ;
 TYPE_5__ input_file_chain ;
 int lang_input_file_is_search_file_enum ;
 int load_symbols (TYPE_1__*,int *) ;
 TYPE_1__* new_afile (char const*,int ,int ,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static lang_input_statement_type *
lookup_name (const char *name)
{
  lang_input_statement_type *search;

  for (search = (lang_input_statement_type *) input_file_chain.head;
       search != ((void*)0);
       search = (lang_input_statement_type *) search->next_real_file)
    {



      const char *filename = search->local_sym_name;

      if (filename != ((void*)0)
   && strcmp (filename, name) == 0)
 break;
    }

  if (search == ((void*)0))
    search = new_afile (name, lang_input_file_is_search_file_enum,
   default_target, FALSE);



  if (search->loaded || !search->real)
    return search;

  if (! load_symbols (search, ((void*)0)))
    return ((void*)0);

  return search;
}
