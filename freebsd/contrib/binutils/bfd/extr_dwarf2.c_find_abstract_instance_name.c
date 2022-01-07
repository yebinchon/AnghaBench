
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comp_unit {int abbrevs; int * info_ptr_unit; int * abfd; } ;
struct TYPE_2__ {char* str; int val; } ;
struct attribute {int name; TYPE_1__ u; } ;
struct abbrev_info {unsigned int num_attrs; int * attrs; } ;
typedef int bfd_uint64_t ;
typedef int bfd_byte ;
typedef int bfd ;





 int _ (char*) ;
 int _bfd_error_handler (int ,unsigned int) ;
 int bfd_error_bad_value ;
 int bfd_set_error (int ) ;
 struct abbrev_info* lookup_abbrev (unsigned int,int ) ;
 int * read_attribute (struct attribute*,int *,struct comp_unit*,int *) ;
 unsigned int read_unsigned_leb128 (int *,int *,unsigned int*) ;
 int stub1 (int ,unsigned int) ;

__attribute__((used)) static char *
find_abstract_instance_name (struct comp_unit *unit, bfd_uint64_t die_ref)
{
  bfd *abfd = unit->abfd;
  bfd_byte *info_ptr;
  unsigned int abbrev_number, bytes_read, i;
  struct abbrev_info *abbrev;
  struct attribute attr;
  char *name = 0;

  info_ptr = unit->info_ptr_unit + die_ref;
  abbrev_number = read_unsigned_leb128 (abfd, info_ptr, &bytes_read);
  info_ptr += bytes_read;

  if (abbrev_number)
    {
      abbrev = lookup_abbrev (abbrev_number, unit->abbrevs);
      if (! abbrev)
 {
   (*_bfd_error_handler) (_("Dwarf Error: Could not find abbrev number %u."),
     abbrev_number);
   bfd_set_error (bfd_error_bad_value);
 }
      else
 {
   for (i = 0; i < abbrev->num_attrs; ++i)
     {
       info_ptr = read_attribute (&attr, &abbrev->attrs[i], unit, info_ptr);
       switch (attr.name)
  {
  case 129:

    if (name == ((void*)0))
      name = attr.u.str;
    break;
  case 128:
    name = find_abstract_instance_name (unit, attr.u.val);
    break;
  case 130:
    name = attr.u.str;
    break;
  default:
    break;
  }
     }
 }
    }
  return (name);
}
