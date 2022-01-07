
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ieee_record_enum_type ;
struct TYPE_9__ {scalar_t__ section_part; } ;
struct TYPE_10__ {TYPE_1__ r; } ;
struct TYPE_11__ {unsigned int section_count; int h; TYPE_4__** section_table; TYPE_2__ w; } ;
typedef TYPE_3__ ieee_data_type ;
typedef scalar_t__ file_ptr ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_12__ {int flags; char* name; size_t size; size_t vma; size_t lma; int alignment_power; } ;
typedef TYPE_4__ asection ;


 TYPE_3__* IEEE_DATA (int *) ;
 void* SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_DATA ;
 int SEC_ROM ;
 scalar_t__ TRUE ;
 int bfd_log2 (size_t) ;
 TYPE_4__* get_section_entry (int *,TYPE_3__*,unsigned int) ;
 int ieee_seek (TYPE_3__*,scalar_t__) ;
 size_t must_parse_int (int *) ;
 int next_byte (int *) ;
 int parse_int (int *,int *) ;
 int read_2bytes (int *) ;
 char* read_id (int *) ;
 int this_byte (int *) ;
 int this_byte_and_next (int *) ;

__attribute__((used)) static void
ieee_slurp_sections (bfd *abfd)
{
  ieee_data_type *ieee = IEEE_DATA (abfd);
  file_ptr offset = ieee->w.r.section_part;
  char *name;

  if (offset != 0)
    {
      bfd_byte section_type[3];

      ieee_seek (ieee, offset);
      while (TRUE)
 {
   switch (this_byte (&(ieee->h)))
     {
     case 128:
       {
  asection *section;
  unsigned int section_index;

  next_byte (&(ieee->h));
  section_index = must_parse_int (&(ieee->h));

  section = get_section_entry (abfd, ieee, section_index);

  section_type[0] = this_byte_and_next (&(ieee->h));



  switch (section_type[0])
    {
    case 0xC1:

      section_type[1] = this_byte (&(ieee->h));
      section->flags = SEC_ALLOC;
      switch (section_type[1])
        {

        case 0xD3:
   next_byte (&(ieee->h));
   section_type[2] = this_byte (&(ieee->h));
   switch (section_type[2])
     {
     case 0xD0:

       next_byte (&(ieee->h));
       section->flags |= SEC_CODE;
       break;
     case 0xC4:

       next_byte (&(ieee->h));
       section->flags |= SEC_DATA;
       break;
     case 0xD2:
       next_byte (&(ieee->h));

       section->flags |= SEC_ROM | SEC_DATA;
       break;
     default:
       break;
     }
        }
      break;


    case 0xC3:
      section_type[1] = this_byte (&(ieee->h));
      section->flags = SEC_ALLOC;
      switch (section_type[1])
        {
        case 0xD0:
   next_byte (&(ieee->h));
   section->flags |= SEC_CODE;
   break;
        case 0xC4:
   next_byte (&(ieee->h));
   section->flags |= SEC_DATA;
   break;
        case 0xD2:
   next_byte (&(ieee->h));
   section->flags |= SEC_ROM | SEC_DATA;
   break;
        default:
   break;
        }
    }


  name = read_id (&ieee->h);
  if (name[0])
    section->name = name;


  {
    bfd_vma parent, brother, context;

    parse_int (&(ieee->h), &parent);
    parse_int (&(ieee->h), &brother);
    parse_int (&(ieee->h), &context);
  }
       }
       break;
     case 132:
       {
  unsigned int section_index;
  bfd_vma value;
  asection *section;

  next_byte (&(ieee->h));
  section_index = must_parse_int (&ieee->h);
  section = get_section_entry (abfd, ieee, section_index);
  if (section_index > ieee->section_count)
    ieee->section_count = section_index;

  section->alignment_power =
    bfd_log2 (must_parse_int (&ieee->h));
  (void) parse_int (&(ieee->h), &value);
       }
       break;
     case 137:
       {
  asection *section;
  ieee_record_enum_type t;

  t = (ieee_record_enum_type) (read_2bytes (&(ieee->h)));
  switch (t)
    {
    case 129:
      section = ieee->section_table[must_parse_int (&(ieee->h))];
      section->size = must_parse_int (&(ieee->h));
      break;
    case 134:
      section = ieee->section_table[must_parse_int (&(ieee->h))];
      section->size = must_parse_int (&(ieee->h));
      break;
    case 133:
      section = ieee->section_table[must_parse_int (&(ieee->h))];
      section->vma = must_parse_int (&(ieee->h));
      section->lma = section->vma;
      break;
    case 135:
      must_parse_int (&(ieee->h));
      must_parse_int (&(ieee->h));
      break;
    case 136:
      must_parse_int (&(ieee->h));
      must_parse_int (&(ieee->h));
      break;
    case 131:
      section = ieee->section_table[must_parse_int (&(ieee->h))];
      section->vma = must_parse_int (&(ieee->h));
      section->lma = section->vma;
      break;
    case 130:
      (void) must_parse_int (&(ieee->h));
      (void) must_parse_int (&(ieee->h));
      break;
    default:
      return;
    }
       }
       break;
     default:
       return;
     }
 }
    }
}
