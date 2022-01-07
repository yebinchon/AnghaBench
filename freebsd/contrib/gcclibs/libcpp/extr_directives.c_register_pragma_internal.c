
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handler; } ;
struct pragma_entry {int is_internal; TYPE_1__ u; } ;
typedef int pragma_cb ;
typedef int cpp_reader ;


 struct pragma_entry* register_pragma_1 (int *,char const*,char const*,int) ;

__attribute__((used)) static void
register_pragma_internal (cpp_reader *pfile, const char *space,
     const char *name, pragma_cb handler)
{
  struct pragma_entry *entry;

  entry = register_pragma_1 (pfile, space, name, 0);
  entry->is_internal = 1;
  entry->u.handler = handler;
}
