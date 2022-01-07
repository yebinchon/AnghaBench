
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ handler; } ;
struct pragma_entry {int allow_expansion; TYPE_1__ u; } ;
typedef scalar_t__ pragma_cb ;
typedef int cpp_reader ;


 int CPP_DL_ICE ;
 int cpp_error (int *,int ,char*) ;
 struct pragma_entry* register_pragma_1 (int *,char const*,char const*,int) ;

void
cpp_register_pragma (cpp_reader *pfile, const char *space, const char *name,
       pragma_cb handler, bool allow_expansion)
{
  struct pragma_entry *entry;

  if (!handler)
    {
      cpp_error (pfile, CPP_DL_ICE, "registering pragma with NULL handler");
      return;
    }

  entry = register_pragma_1 (pfile, space, name, 0);
  if (entry)
    {
      entry->allow_expansion = allow_expansion;
      entry->u.handler = handler;
    }
}
