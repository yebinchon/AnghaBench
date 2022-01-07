
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int addend; unsigned int address; int * howto; int * sym_ptr_ptr; } ;
struct TYPE_19__ {TYPE_2__ relent; int symbol; struct TYPE_19__* next; } ;
typedef TYPE_3__ ieee_reloc_type ;
struct TYPE_20__ {unsigned int pc; TYPE_3__** reloc_tail_ptr; } ;
typedef TYPE_4__ ieee_per_section_type ;
struct TYPE_23__ {int abfd; } ;
struct TYPE_21__ {TYPE_7__ h; } ;
typedef TYPE_5__ ieee_data_type ;
typedef unsigned int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_22__ {int * symbol_ptr_ptr; int reloc_count; TYPE_1__* owner; int flags; } ;
typedef TYPE_6__ asection ;
struct TYPE_17__ {int flags; } ;


 int BFD_FAIL () ;
 int FALSE ;
 int HAS_RELOC ;
 int SEC_RELOC ;
 int TRUE ;
 int abs16_howto ;
 int abs32_howto ;
 int abs8_howto ;
 TYPE_3__* bfd_alloc (int ,int) ;
 int bfd_put_16 (int ,unsigned int,unsigned char*) ;
 int bfd_put_32 (int ,unsigned int,unsigned char*) ;
 int bfd_put_8 (int ,int,unsigned char*) ;
 scalar_t__ ieee_comma ;
 unsigned int must_parse_int (TYPE_7__*) ;
 int next_byte (TYPE_7__*) ;
 int parse_expression (TYPE_5__*,int*,int *,int *,unsigned int*,TYPE_6__**) ;
 int parse_int (TYPE_7__*,unsigned int*) ;
 int rel16_howto ;
 int rel32_howto ;
 int rel8_howto ;
 int this_byte (TYPE_7__*) ;

__attribute__((used)) static bfd_boolean
do_one (ieee_data_type *ieee,
 ieee_per_section_type *current_map,
 unsigned char *location_ptr,
 asection *s,
 int iterations)
{
  switch (this_byte (&(ieee->h)))
    {
    case 130:
      {
 unsigned int number_of_maus;
 unsigned int i;

 next_byte (&(ieee->h));
 number_of_maus = must_parse_int (&(ieee->h));

 for (i = 0; i < number_of_maus; i++)
   {
     location_ptr[current_map->pc++] = this_byte (&(ieee->h));
     next_byte (&(ieee->h));
   }
      }
      break;

    case 129:
      {
 bfd_boolean loop = TRUE;

 next_byte (&(ieee->h));
 while (loop)
   {
     switch (this_byte (&(ieee->h)))
       {
       case 128:

       case 133:
       case 131:
       case 135:
  {
    unsigned int extra = 4;
    bfd_boolean pcrel = FALSE;
    asection *section;
    ieee_reloc_type *r;

    r = bfd_alloc (ieee->h.abfd, sizeof (* r));
    if (!r)
      return FALSE;

    *(current_map->reloc_tail_ptr) = r;
    current_map->reloc_tail_ptr = &r->next;
    r->next = (ieee_reloc_type *) ((void*)0);
    next_byte (&(ieee->h));

    r->relent.sym_ptr_ptr = 0;
    parse_expression (ieee,
        &r->relent.addend,
        &r->symbol,
        &pcrel, &extra, &section);
    r->relent.address = current_map->pc;
    s->flags |= SEC_RELOC;
    s->owner->flags |= HAS_RELOC;
    s->reloc_count++;
    if (r->relent.sym_ptr_ptr == ((void*)0) && section != ((void*)0))
      r->relent.sym_ptr_ptr = section->symbol_ptr_ptr;

    if (this_byte (&(ieee->h)) == (int) ieee_comma)
      {
        next_byte (&(ieee->h));

        extra = must_parse_int (&(ieee->h));
      };

    switch (this_byte (&(ieee->h)))
      {
      case 134:
        next_byte (&(ieee->h));
        break;
      case 132:
        next_byte (&(ieee->h));
        break;
      case 136:
        next_byte (&(ieee->h));
        break;
      default:
        break;
      }







    switch (extra)
      {
      case 0:
      case 4:

        if (pcrel)
   {






     bfd_put_32 (ieee->h.abfd, (bfd_vma) 0, location_ptr +
          current_map->pc);
     r->relent.howto = &rel32_howto;

   }
        else
   {
     bfd_put_32 (ieee->h.abfd, (bfd_vma) 0,
          location_ptr + current_map->pc);
     r->relent.howto = &abs32_howto;
   }
        current_map->pc += 4;
        break;
      case 2:
        if (pcrel)
   {







     bfd_put_16 (ieee->h.abfd, (bfd_vma) 0,
          location_ptr + current_map->pc);
     r->relent.howto = &rel16_howto;

   }

        else
   {
     bfd_put_16 (ieee->h.abfd, (bfd_vma) 0,
          location_ptr + current_map->pc);
     r->relent.howto = &abs16_howto;
   }
        current_map->pc += 2;
        break;
      case 1:
        if (pcrel)
   {





     bfd_put_8 (ieee->h.abfd, 0, location_ptr + current_map->pc);
     r->relent.howto = &rel8_howto;

   }
        else
   {
     bfd_put_8 (ieee->h.abfd, 0, location_ptr + current_map->pc);
     r->relent.howto = &abs8_howto;
   }
        current_map->pc += 1;
        break;

      default:
        BFD_FAIL ();
        return FALSE;
      }
  }
  break;
       default:
  {
    bfd_vma this_size;

    if (parse_int (&(ieee->h), &this_size))
      {
        unsigned int i;

        for (i = 0; i < this_size; i++)
   {
     location_ptr[current_map->pc++] = this_byte (&(ieee->h));
     next_byte (&(ieee->h));
   }
      }
    else
      loop = FALSE;
  }
       }



     if (iterations != 1)
       loop = FALSE;
   }
      }
    }
  return TRUE;
}
