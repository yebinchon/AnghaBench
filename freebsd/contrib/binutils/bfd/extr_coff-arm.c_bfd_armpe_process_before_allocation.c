
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct internal_reloc {unsigned short r_type; long r_symndx; } ;
struct coff_link_hash_entry {int class; } ;
struct coff_arm_link_hash_table {int support_old_code; int * bfd_of_glue_owner; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef int bfd_boolean ;
struct TYPE_10__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_11__ {scalar_t__ reloc_count; struct TYPE_11__* next; } ;
typedef TYPE_2__ asection ;




 int BFD_ASSERT (int) ;



 int C_THUMBEXTFUNC ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_coff_get_external_symbols (TYPE_1__*) ;
 struct internal_reloc* _bfd_coff_read_internal_relocs (TYPE_1__*,TYPE_2__*,int,int ,int ,int ) ;
 int _bfd_error_handler (int ,TYPE_1__*,long) ;
 struct coff_arm_link_hash_table* coff_arm_hash_table (struct bfd_link_info*) ;
 struct coff_link_hash_entry** obj_coff_sym_hashes (TYPE_1__*) ;
 long obj_conv_table_size (TYPE_1__*) ;
 int record_arm_to_thumb_glue (struct bfd_link_info*,struct coff_link_hash_entry*) ;
 int record_thumb_to_arm_glue (struct bfd_link_info*,struct coff_link_hash_entry*) ;

bfd_boolean
bfd_arm_process_before_allocation (bfd * abfd,
       struct bfd_link_info * info,
       int support_old_code)
{
  asection * sec;
  struct coff_arm_link_hash_table * globals;



  if (info->relocatable)
    return TRUE;



  _bfd_coff_get_external_symbols (abfd);

  globals = coff_arm_hash_table (info);

  BFD_ASSERT (globals != ((void*)0));
  BFD_ASSERT (globals->bfd_of_glue_owner != ((void*)0));

  globals->support_old_code = support_old_code;


  sec = abfd->sections;

  if (sec == ((void*)0))
    return TRUE;

  for (; sec != ((void*)0); sec = sec->next)
    {
      struct internal_reloc * i;
      struct internal_reloc * rel;

      if (sec->reloc_count == 0)
 continue;



      i = _bfd_coff_read_internal_relocs (abfd, sec, 1, 0, 0, 0);

      BFD_ASSERT (i != 0);

      for (rel = i; rel < i + sec->reloc_count; ++rel)
 {
   unsigned short r_type = rel->r_type;
   long symndx;
   struct coff_link_hash_entry * h;

   symndx = rel->r_symndx;


   if (symndx == -1)
     continue;


   if (symndx >= obj_conv_table_size (abfd))
     {
       _bfd_error_handler (_("%B: illegal symbol index in reloc: %d"),
      abfd, symndx);
       continue;
     }

   h = obj_coff_sym_hashes (abfd)[symndx];



   if (h == ((void*)0))
     continue;

   switch (r_type)
     {
     case 132:




       if (h->class == C_THUMBEXTFUNC)
  record_arm_to_thumb_glue (info, h);
       break;


     case 131:
       switch (h->class)
  {
  case 130:
  case 128:
  case 129:
    record_thumb_to_arm_glue (info, h);
    break;
  default:
    ;
  }
       break;


     default:
       break;
     }
 }
    }

  return TRUE;
}
