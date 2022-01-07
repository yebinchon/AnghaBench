
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function_range {char const* name; struct function_range* next; scalar_t__ seen_line; void* highpc; void* lowpc; } ;
struct dwarf2_cu {struct function_range* last_fn; struct function_range* first_fn; } ;
typedef void* CORE_ADDR ;


 int dwarf2_tmp_obstack ;
 scalar_t__ obstack_alloc (int *,int) ;

__attribute__((used)) static void
add_to_cu_func_list (const char *name, CORE_ADDR lowpc, CORE_ADDR highpc,
       struct dwarf2_cu *cu)
{
  struct function_range *thisfn;

  thisfn = (struct function_range *)
    obstack_alloc (&dwarf2_tmp_obstack, sizeof (struct function_range));
  thisfn->name = name;
  thisfn->lowpc = lowpc;
  thisfn->highpc = highpc;
  thisfn->seen_line = 0;
  thisfn->next = ((void*)0);

  if (cu->last_fn == ((void*)0))
      cu->first_fn = thisfn;
  else
      cu->last_fn->next = thisfn;

  cu->last_fn = thisfn;
}
