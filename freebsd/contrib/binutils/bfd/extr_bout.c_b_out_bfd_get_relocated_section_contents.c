
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {TYPE_4__* section; } ;
struct TYPE_20__ {TYPE_1__ indirect; } ;
struct bfd_link_order {unsigned int size; TYPE_2__ u; } ;
struct bfd_link_info {int dummy; } ;
typedef long bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_22__ {long size; int * owner; } ;
typedef TYPE_4__ asection ;
struct TYPE_23__ {unsigned int address; unsigned int addend; TYPE_3__* howto; } ;
typedef TYPE_5__ arelent ;
struct TYPE_21__ {int type; unsigned int size; } ;






 long BAL_MASK ;
 int BFD_ASSERT (int) ;

 int FALSE ;

 long PCREL13_MASK ;

 int TRUE ;
 int abort () ;
 long bfd_canonicalize_reloc (int *,TYPE_4__*,TYPE_5__**,int **) ;
 int * bfd_generic_get_relocated_section_contents (int *,struct bfd_link_info*,struct bfd_link_order*,int *,scalar_t__,int **) ;
 long bfd_get_32 (int *,int *) ;
 long bfd_get_reloc_upper_bound (int *,TYPE_4__*) ;
 int bfd_get_section_contents (int *,TYPE_4__*,int *,long,long) ;
 TYPE_5__** bfd_malloc (int ) ;
 int bfd_put_32 (int *,long,int *) ;
 int callj_callback (int *,struct bfd_link_info*,TYPE_5__*,int *,unsigned int,unsigned int,TYPE_4__*,int ) ;
 int calljx_callback (int *,struct bfd_link_info*,TYPE_5__*,int *,int *,TYPE_4__*) ;
 int free (TYPE_5__**) ;
 long get_value (TYPE_5__*,struct bfd_link_info*,TYPE_4__*) ;
 long output_addr (TYPE_4__*) ;

__attribute__((used)) static bfd_byte *
b_out_bfd_get_relocated_section_contents (bfd *output_bfd,
       struct bfd_link_info *link_info,
       struct bfd_link_order *link_order,
       bfd_byte *data,
       bfd_boolean relocatable,
       asymbol **symbols)
{

  bfd *input_bfd = link_order->u.indirect.section->owner;
  asection *input_section = link_order->u.indirect.section;
  long reloc_size = bfd_get_reloc_upper_bound (input_bfd, input_section);
  arelent **reloc_vector = ((void*)0);
  long reloc_count;

  if (reloc_size < 0)
    goto error_return;


  if (relocatable)
    return bfd_generic_get_relocated_section_contents (output_bfd, link_info,
             link_order,
             data, relocatable,
             symbols);

  reloc_vector = bfd_malloc ((bfd_size_type) reloc_size);
  if (reloc_vector == ((void*)0) && reloc_size != 0)
    goto error_return;


  BFD_ASSERT (bfd_get_section_contents (input_bfd,
     input_section,
     data,
     (bfd_vma) 0,
     input_section->size));

  reloc_count = bfd_canonicalize_reloc (input_bfd,
     input_section,
     reloc_vector,
     symbols);
  if (reloc_count < 0)
    goto error_return;
  if (reloc_count > 0)
    {
      arelent **parent = reloc_vector;
      arelent *reloc ;
      unsigned int dst_address = 0;
      unsigned int src_address = 0;
      unsigned int run;
      unsigned int idx;


      while (dst_address < link_order->size)
 {
   reloc = *parent;
   if (reloc)
     {



       BFD_ASSERT (reloc->address >= src_address);
       run = reloc->address - src_address;
       parent++;
     }
   else
     run = link_order->size - dst_address;


   for (idx = 0; idx < run; idx++)
     data[dst_address++] = data[src_address++];


   if (reloc)
     {
       switch (reloc->howto->type)
  {
  case 133:
    calljx_callback (input_bfd, link_info, reloc,
       src_address + data, dst_address + data,
       input_section);
    src_address += 4;
    dst_address += 4;
    break;
  case 134:
    bfd_put_32 (input_bfd,
         (bfd_get_32 (input_bfd, data + src_address)
          + get_value (reloc, link_info, input_section)),
         data + dst_address);
    src_address += 4;
    dst_address += 4;
    break;
  case 130:
    callj_callback (input_bfd, link_info, reloc, data,
      src_address, dst_address, input_section,
      FALSE);
    src_address += 4;
    dst_address += 4;
    break;
  case 131:
    BFD_ASSERT (reloc->addend >= src_address);
    BFD_ASSERT ((bfd_vma) reloc->addend
         <= input_section->size);
    src_address = reloc->addend;
    dst_address = ((dst_address + reloc->howto->size)
     & ~reloc->howto->size);
    break;
  case 132:


    callj_callback (input_bfd, link_info, reloc, data,
      src_address + 4, dst_address, input_section,
      TRUE);
    dst_address += 4;
    src_address += 8;
    break;
  case 128:
    {
      long int word = bfd_get_32 (input_bfd,
      data + src_address);
      bfd_vma value;

      value = get_value (reloc, link_info, input_section);
      word = ((word & ~BAL_MASK)
       | (((word & BAL_MASK)
    + value
    - output_addr (input_section)
    + reloc->addend)
          & BAL_MASK));

      bfd_put_32 (input_bfd, (bfd_vma) word, data + dst_address);
      dst_address += 4;
      src_address += 4;

    }
    break;
  case 129:
    {
      long int word = bfd_get_32 (input_bfd,
      data + src_address);
      bfd_vma value;

      value = get_value (reloc, link_info, input_section);
      word = ((word & ~PCREL13_MASK)
       | (((word & PCREL13_MASK)
    + value
    + reloc->addend
    - output_addr (input_section))
          & PCREL13_MASK));

      bfd_put_32 (input_bfd, (bfd_vma) word, data + dst_address);
      dst_address += 4;
      src_address += 4;
    }
    break;

  default:
    abort ();
  }
     }
 }
    }
  if (reloc_vector != ((void*)0))
    free (reloc_vector);
  return data;
 error_return:
  if (reloc_vector != ((void*)0))
    free (reloc_vector);
  return ((void*)0);
}
