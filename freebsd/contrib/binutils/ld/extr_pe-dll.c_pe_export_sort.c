
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ def_file_export ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
pe_export_sort (const void *va, const void *vb)
{
  const def_file_export *a = va;
  const def_file_export *b = vb;

  return strcmp (a->name, b->name);
}
