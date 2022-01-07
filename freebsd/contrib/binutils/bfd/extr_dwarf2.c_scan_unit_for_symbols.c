
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct varinfo {scalar_t__ tag; int stack; scalar_t__ line; int addr; void* file; int * name; struct varinfo* prev_var; } ;
struct funcinfo {scalar_t__ tag; scalar_t__ caller_line; scalar_t__ line; int arange; void* file; int * name; void* caller_file; struct funcinfo* caller_func; struct funcinfo* prev_func; } ;
struct comp_unit {int addr_size; int * abfd; int line_table; struct varinfo* variable_table; struct funcinfo* function_table; int abbrevs; int * first_child_die_ptr; } ;
struct TYPE_3__ {scalar_t__ val; TYPE_2__* blk; int * str; } ;
struct attribute {int name; TYPE_1__ u; int form; } ;
struct abbrev_info {scalar_t__ tag; unsigned int num_attrs; scalar_t__ has_children; int * attrs; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int * data; int size; } ;
 int DW_OP_addr ;
 scalar_t__ DW_TAG_entry_point ;
 scalar_t__ DW_TAG_inlined_subroutine ;
 scalar_t__ DW_TAG_subprogram ;
 scalar_t__ DW_TAG_variable ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,unsigned int) ;
 int arange_add (int *,int *,scalar_t__,scalar_t__) ;
 int bfd_error_bad_value ;
 int bfd_get (int,int *,int ) ;
 struct funcinfo** bfd_malloc (int) ;
 struct funcinfo** bfd_realloc (struct funcinfo**,int) ;
 int bfd_set_error (int ) ;
 void* bfd_zalloc (int *,int) ;
 void* concat_filename (int ,scalar_t__) ;
 int * find_abstract_instance_name (struct comp_unit*,scalar_t__) ;
 int free (struct funcinfo**) ;
 struct abbrev_info* lookup_abbrev (unsigned int,int ) ;
 int * read_attribute (struct attribute*,int *,struct comp_unit*,int *) ;
 int read_rangelist (struct comp_unit*,int *,scalar_t__) ;
 unsigned int read_unsigned_leb128 (int *,int *,unsigned int*) ;
 int stub1 (int ,unsigned int) ;

__attribute__((used)) static bfd_boolean
scan_unit_for_symbols (struct comp_unit *unit)
{
  bfd *abfd = unit->abfd;
  bfd_byte *info_ptr = unit->first_child_die_ptr;
  int nesting_level = 1;
  struct funcinfo **nested_funcs;
  int nested_funcs_size;



  nested_funcs_size = 32;
  nested_funcs = bfd_malloc (nested_funcs_size * sizeof (struct funcinfo *));
  if (nested_funcs == ((void*)0))
    return FALSE;
  nested_funcs[nesting_level] = 0;

  while (nesting_level)
    {
      unsigned int abbrev_number, bytes_read, i;
      struct abbrev_info *abbrev;
      struct attribute attr;
      struct funcinfo *func;
      struct varinfo *var;
      bfd_vma low_pc = 0;
      bfd_vma high_pc = 0;

      abbrev_number = read_unsigned_leb128 (abfd, info_ptr, &bytes_read);
      info_ptr += bytes_read;

      if (! abbrev_number)
 {
   nesting_level--;
   continue;
 }

      abbrev = lookup_abbrev (abbrev_number,unit->abbrevs);
      if (! abbrev)
 {
   (*_bfd_error_handler) (_("Dwarf Error: Could not find abbrev number %u."),
        abbrev_number);
   bfd_set_error (bfd_error_bad_value);
   free (nested_funcs);
   return FALSE;
 }

      var = ((void*)0);
      if (abbrev->tag == DW_TAG_subprogram
   || abbrev->tag == DW_TAG_entry_point
   || abbrev->tag == DW_TAG_inlined_subroutine)
 {
   bfd_size_type amt = sizeof (struct funcinfo);
   func = bfd_zalloc (abfd, amt);
   func->tag = abbrev->tag;
   func->prev_func = unit->function_table;
   unit->function_table = func;

   if (func->tag == DW_TAG_inlined_subroutine)
     for (i = nesting_level - 1; i >= 1; i--)
       if (nested_funcs[i])
  {
    func->caller_func = nested_funcs[i];
    break;
  }
   nested_funcs[nesting_level] = func;
 }
      else
 {
   func = ((void*)0);
   if (abbrev->tag == DW_TAG_variable)
     {
       bfd_size_type amt = sizeof (struct varinfo);
       var = bfd_zalloc (abfd, amt);
       var->tag = abbrev->tag;
       var->stack = 1;
       var->prev_var = unit->variable_table;
       unit->variable_table = var;
     }


   nested_funcs[nesting_level] = 0;
 }

      for (i = 0; i < abbrev->num_attrs; ++i)
 {
   info_ptr = read_attribute (&attr, &abbrev->attrs[i], unit, info_ptr);

   if (func)
     {
       switch (attr.name)
  {
  case 141:
    func->caller_file = concat_filename (unit->line_table, attr.u.val);
    break;

  case 140:
    func->caller_line = attr.u.val;
    break;

  case 142:
    func->name = find_abstract_instance_name (unit, attr.u.val);
    break;

  case 133:

    if (func->name == ((void*)0))
      func->name = attr.u.str;
    break;

  case 143:
    func->name = attr.u.str;
    break;

  case 134:
    low_pc = attr.u.val;
    break;

  case 136:
    high_pc = attr.u.val;
    break;

  case 132:
    read_rangelist (unit, &func->arange, attr.u.val);
    break;

  case 139:
    func->file = concat_filename (unit->line_table,
      attr.u.val);
    break;

  case 138:
    func->line = attr.u.val;
    break;

  default:
    break;
  }
     }
   else if (var)
     {
       switch (attr.name)
  {
  case 133:
    var->name = attr.u.str;
    break;

  case 139:
    var->file = concat_filename (unit->line_table,
            attr.u.val);
    break;

  case 138:
    var->line = attr.u.val;
    break;

  case 137:
    if (attr.u.val != 0)
      var->stack = 0;
    break;

  case 135:
    switch (attr.form)
      {
      case 131:
      case 130:
      case 129:
      case 128:
        if (*attr.u.blk->data == DW_OP_addr)
   {
     var->stack = 0;







     if (attr.u.blk->size == unit->addr_size + 1U)
       var->addr = bfd_get (unit->addr_size * 8,
       unit->abfd,
       attr.u.blk->data + 1);
   }
        break;

      default:
        break;
      }
    break;

  default:
    break;
  }
     }
 }

      if (func && high_pc != 0)
 {
   arange_add (unit->abfd, &func->arange, low_pc, high_pc);
 }

      if (abbrev->has_children)
 {
   nesting_level++;

   if (nesting_level >= nested_funcs_size)
     {
       struct funcinfo **tmp;

       nested_funcs_size *= 2;
       tmp = bfd_realloc (nested_funcs,
     (nested_funcs_size
      * sizeof (struct funcinfo *)));
       if (tmp == ((void*)0))
  {
    free (nested_funcs);
    return FALSE;
  }
       nested_funcs = tmp;
     }
   nested_funcs[nesting_level] = 0;
 }
    }

  free (nested_funcs);
  return TRUE;
}
