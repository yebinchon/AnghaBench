
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_78__ TYPE_9__ ;
typedef struct TYPE_77__ TYPE_8__ ;
typedef struct TYPE_76__ TYPE_7__ ;
typedef struct TYPE_75__ TYPE_6__ ;
typedef struct TYPE_74__ TYPE_5__ ;
typedef struct TYPE_73__ TYPE_4__ ;
typedef struct TYPE_72__ TYPE_42__ ;
typedef struct TYPE_71__ TYPE_41__ ;
typedef struct TYPE_70__ TYPE_40__ ;
typedef struct TYPE_69__ TYPE_3__ ;
typedef struct TYPE_68__ TYPE_37__ ;
typedef struct TYPE_67__ TYPE_32__ ;
typedef struct TYPE_66__ TYPE_2__ ;
typedef struct TYPE_65__ TYPE_27__ ;
typedef struct TYPE_64__ TYPE_21__ ;
typedef struct TYPE_63__ TYPE_20__ ;
typedef struct TYPE_62__ TYPE_1__ ;
typedef struct TYPE_61__ TYPE_19__ ;
typedef struct TYPE_60__ TYPE_18__ ;
typedef struct TYPE_59__ TYPE_17__ ;
typedef struct TYPE_58__ TYPE_16__ ;
typedef struct TYPE_57__ TYPE_15__ ;
typedef struct TYPE_56__ TYPE_14__ ;
typedef struct TYPE_55__ TYPE_13__ ;
typedef struct TYPE_54__ TYPE_12__ ;
typedef struct TYPE_53__ TYPE_11__ ;
typedef struct TYPE_52__ TYPE_10__ ;


struct TYPE_58__ {int type; TYPE_17__* next; } ;
struct TYPE_56__ {TYPE_17__* head; } ;
struct TYPE_57__ {TYPE_14__ children; } ;
struct TYPE_55__ {unsigned int output_offset; int size; } ;
struct TYPE_52__ {TYPE_20__* exp; } ;
struct TYPE_78__ {int * fill; TYPE_21__* output_section; } ;
struct TYPE_77__ {TYPE_21__* section; } ;
struct TYPE_75__ {TYPE_17__* head; } ;
struct TYPE_76__ {TYPE_6__ children; } ;
struct TYPE_74__ {unsigned int output_offset; int howto; TYPE_21__* output_section; } ;
struct TYPE_73__ {unsigned int output_offset; int type; TYPE_20__* exp; TYPE_21__* output_section; } ;
struct TYPE_69__ {TYPE_17__* head; } ;
struct TYPE_60__ {int section_alignment; unsigned int block_value; int section_relative_symbol; int flags; TYPE_21__* bfd_section; int ignored; int * fill; TYPE_19__* lma_region; TYPE_19__* region; TYPE_20__* addr_tree; TYPE_20__* update_dot_tree; void* processed_lma; int sectype; int name; int load_base; void* processed_vma; TYPE_3__ children; } ;
struct TYPE_59__ {TYPE_16__ header; TYPE_15__ group_statement; TYPE_13__ padding_statement; TYPE_10__ assignment_statement; TYPE_9__ fill_statement; TYPE_8__ input_section; TYPE_7__ wild_statement; TYPE_5__ reloc_statement; TYPE_4__ data_statement; TYPE_18__ output_section_statement; } ;
typedef TYPE_17__ lang_statement_union_type ;
typedef TYPE_18__ lang_output_section_statement_type ;
struct TYPE_61__ {char* name; unsigned int current; TYPE_17__* last_os; } ;
typedef TYPE_19__ lang_memory_region_type ;
typedef int fill_type ;
struct TYPE_54__ {char* dst; } ;
struct TYPE_53__ {int node_class; } ;
struct TYPE_63__ {TYPE_12__ assign; TYPE_11__ type; } ;
typedef TYPE_20__ etree_type ;
typedef unsigned int bfd_vma ;
typedef void* bfd_boolean ;
struct TYPE_64__ {int flags; unsigned int size; unsigned int vma; int alignment_power; unsigned int lma; int owner; int output_offset; } ;
typedef TYPE_21__ asection ;
struct TYPE_72__ {int check_section_addresses; } ;
struct TYPE_71__ {int warn_section_align; } ;
struct TYPE_70__ {TYPE_17__* head; } ;
struct TYPE_66__ {unsigned int value; TYPE_1__* section; int valid_p; } ;
struct TYPE_68__ {int phase; TYPE_2__ result; } ;
struct TYPE_67__ {char* name; int * next; } ;
struct TYPE_65__ {TYPE_21__* create_object_symbols_section; int relocatable; } ;
struct TYPE_62__ {unsigned int vma; } ;


 int ASSERT (int) ;

 unsigned int BYTE_SIZE ;
 int DEFAULT_MEMORY_REGION ;
 int FAIL () ;
 void* FALSE ;
 int IGNORE_SECTION (TYPE_21__*) ;

 unsigned int LONG_SIZE ;

 unsigned int QUAD_SIZE ;
 int SEC_ALLOC ;
 int SEC_COFF_SHARED_LIBRARY ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int SEC_NEVER_LOAD ;
 int SEC_THREAD_LOCAL ;

 unsigned int SHORT_SIZE ;

 unsigned int TO_ADDR (int) ;
 unsigned int TO_SIZE (unsigned int) ;
 void* TRUE ;
 int _ (char*) ;
 int abort () ;
 TYPE_18__* abs_output_section ;
 unsigned int align_power (unsigned int,int) ;
 TYPE_21__* bfd_abs_section_ptr ;
 int bfd_get_flavour (int ) ;
 int bfd_get_reloc_size (int ) ;
 int bfd_get_section_name (int ,TYPE_21__*) ;
 int bfd_is_abs_section (TYPE_21__*) ;
 int bfd_relax_section (int ,TYPE_21__*,TYPE_27__*,void**) ;
 unsigned int bfd_section_vma (int ,TYPE_21__*) ;
 int bfd_set_section_vma (int ,TYPE_21__*,unsigned int) ;
 int bfd_target_coff_flavour ;
 int bfd_target_ecoff_flavour ;
 TYPE_42__ command_line ;
 TYPE_41__ config ;
 TYPE_40__ constructor_list ;
 int einfo (int ,...) ;
 int etree_assign ;
 int etree_provided ;
 int exp_fold_tree (TYPE_20__*,TYPE_21__*,unsigned int*) ;
 unsigned int exp_get_abs_int (int ,int ,char*) ;
 TYPE_37__ expld ;
 int insert_pad (TYPE_17__**,int *,unsigned int,TYPE_21__*,unsigned int) ;
 int lang_mark_phase_enum ;
 TYPE_19__* lang_memory_default (TYPE_21__*) ;
 TYPE_32__* lang_memory_region_list ;
 TYPE_19__* lang_memory_region_lookup (int ,void*) ;







 TYPE_27__ link_info ;
 int os_region_check (TYPE_18__*,TYPE_19__*,TYPE_20__*,unsigned int) ;
 int output_bfd ;
 int overlay_section ;
 unsigned int size_input_section (TYPE_17__**,TYPE_18__*,int *,unsigned int) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static bfd_vma
lang_size_sections_1
  (lang_statement_union_type *s,
   lang_output_section_statement_type *output_section_statement,
   lang_statement_union_type **prev,
   fill_type *fill,
   bfd_vma dot,
   bfd_boolean *relax,
   bfd_boolean check_regions)
{

  for (; s != ((void*)0); s = s->header.next)
    {
      switch (s->header.type)
 {
 case 133:
   {
     bfd_vma newdot, after;
     lang_output_section_statement_type *os;
     lang_memory_region_type *r;

     os = &s->output_section_statement;
     if (os->addr_tree != ((void*)0))
       {
  os->processed_vma = FALSE;
  exp_fold_tree (os->addr_tree, bfd_abs_section_ptr, &dot);

  if (!expld.result.valid_p
      && expld.phase != lang_mark_phase_enum)
    einfo (_("%F%S: non constant or forward reference"
      " address expression for section %s\n"),
    os->name);

  dot = expld.result.value + expld.result.section->vma;
       }

     if (os->bfd_section == ((void*)0))

       break;





     if ((bfd_get_flavour (output_bfd) == bfd_target_ecoff_flavour
   || bfd_get_flavour (output_bfd) == bfd_target_coff_flavour)
  && (os->bfd_section->flags & SEC_COFF_SHARED_LIBRARY) != 0)
       {
  asection *input;

  if (os->children.head == ((void*)0)
      || os->children.head->header.next != ((void*)0)
      || (os->children.head->header.type
   != 136))
    einfo (_("%P%X: Internal error on COFF shared library"
      " section %s\n"), os->name);

  input = os->children.head->input_section.section;
  (void) bfd_set_section_vma (os->bfd_section->owner,
         os->bfd_section,
         bfd_section_vma (input->owner,
            input));
  os->bfd_section->size = input->size;
  break;
       }

     newdot = dot;
     if (bfd_is_abs_section (os->bfd_section))
       {

  ASSERT (os->bfd_section->vma == 0);
       }
     else
       {
  int align;

  if (os->addr_tree == ((void*)0))
    {


      if (os->region == ((void*)0)
   || ((os->bfd_section->flags & (SEC_ALLOC | SEC_LOAD))
       && os->region->name[0] == '*'
       && strcmp (os->region->name,
           DEFAULT_MEMORY_REGION) == 0))
        {
   os->region = lang_memory_default (os->bfd_section);
        }




      if (!os->ignored
   && !IGNORE_SECTION (os->bfd_section)
   && ! link_info.relocatable
   && check_regions
   && strcmp (os->region->name,
       DEFAULT_MEMORY_REGION) == 0
   && lang_memory_region_list != ((void*)0)
   && (strcmp (lang_memory_region_list->name,
        DEFAULT_MEMORY_REGION) != 0
       || lang_memory_region_list->next != ((void*)0))
   && expld.phase != lang_mark_phase_enum)
        {
   if (command_line.check_section_addresses)
     einfo (_("%P%F: error: no memory region specified"
       " for loadable section `%s'\n"),
     bfd_get_section_name (output_bfd,
             os->bfd_section));
   else
     einfo (_("%P: warning: no memory region specified"
       " for loadable section `%s'\n"),
     bfd_get_section_name (output_bfd,
             os->bfd_section));
        }

      newdot = os->region->current;
      align = os->bfd_section->alignment_power;
    }
  else
    align = os->section_alignment;


  if (align > 0)
    {
      bfd_vma savedot = newdot;
      newdot = align_power (newdot, align);

      if (newdot != savedot
   && (config.warn_section_align
       || os->addr_tree != ((void*)0))
   && expld.phase != lang_mark_phase_enum)
        einfo (_("%P: warning: changing start of section"
          " %s by %lu bytes\n"),
        os->name, (unsigned long) (newdot - savedot));
    }

  (void) bfd_set_section_vma (0, os->bfd_section, newdot);

  os->bfd_section->output_offset = 0;
       }

     lang_size_sections_1 (os->children.head, os, &os->children.head,
      os->fill, newdot, relax, check_regions);

     os->processed_vma = TRUE;

     if (bfd_is_abs_section (os->bfd_section) || os->ignored)





       ASSERT (os->bfd_section->size == 0);
     else
       {
  dot = os->bfd_section->vma;



  after = ((dot
     + TO_ADDR (os->bfd_section->size)
     + os->block_value - 1)
    & - (bfd_vma) os->block_value);

  os->bfd_section->size = TO_SIZE (after - os->bfd_section->vma);
       }


     r = os->region;
     if (r == ((void*)0))
       r = lang_memory_region_lookup (DEFAULT_MEMORY_REGION, FALSE);

     if (os->load_base)
       {
  bfd_vma lma = exp_get_abs_int (os->load_base, 0, "load base");
  os->bfd_section->lma = lma;
       }
     else if (os->region != ((void*)0)
       && os->lma_region != ((void*)0)
       && os->lma_region != os->region)
       {
  bfd_vma lma = os->lma_region->current;

  if (os->section_alignment != -1)
    lma = align_power (lma, os->section_alignment);
  os->bfd_section->lma = lma;
       }
     else if (r->last_os != ((void*)0)
       && (os->bfd_section->flags & SEC_ALLOC) != 0)
       {
  bfd_vma lma;
  asection *last;

  last = r->last_os->output_section_statement.bfd_section;





  if (dot < last->vma
      && os->bfd_section->size != 0
      && dot + os->bfd_section->size <= last->vma)
    {






      if (last->vma != last->lma)
        einfo (_("%P: warning: dot moved backwards before `%s'\n"),
        os->name);
    }
  else
    {


      if (os->sectype == overlay_section)
        lma = last->lma + last->size;



      else
        lma = dot + last->lma - last->vma;

      if (os->section_alignment != -1)
        lma = align_power (lma, os->section_alignment);
      os->bfd_section->lma = lma;
    }
       }
     os->processed_lma = TRUE;

     if (bfd_is_abs_section (os->bfd_section) || os->ignored)
       break;
     if (((os->bfd_section->flags & SEC_HAS_CONTENTS) != 0
   || (os->bfd_section->flags & SEC_THREAD_LOCAL) == 0)
  && (os->bfd_section->flags & SEC_ALLOC) != 0
  && (os->bfd_section->size != 0
      || (r->last_os == ((void*)0)
   && os->bfd_section->vma != os->bfd_section->lma)
      || (r->last_os != ((void*)0)
   && dot >= (r->last_os->output_section_statement
       .bfd_section->vma)))
  && os->lma_region == ((void*)0)
  && !link_info.relocatable)
       r->last_os = s;


     if ((os->bfd_section->flags & SEC_HAS_CONTENTS) != 0
  || (os->bfd_section->flags & SEC_THREAD_LOCAL) == 0
  || link_info.relocatable)
       dot += TO_ADDR (os->bfd_section->size);

     if (os->update_dot_tree != 0)
       exp_fold_tree (os->update_dot_tree, bfd_abs_section_ptr, &dot);
     if (os->region != ((void*)0)
  && ((os->bfd_section->flags & SEC_NEVER_LOAD) == 0
      || (os->bfd_section->flags & (SEC_ALLOC | SEC_LOAD))))
       {
  os->region->current = dot;

  if (check_regions)

    os_region_check (os, os->region, os->addr_tree,
       os->bfd_section->vma);

  if (os->lma_region != ((void*)0) && os->lma_region != os->region)
    {
      os->lma_region->current
        = os->bfd_section->lma + TO_ADDR (os->bfd_section->size);

      if (check_regions)
        os_region_check (os, os->lma_region, ((void*)0),
           os->bfd_section->lma);
    }
       }
   }
   break;

 case 140:
   dot = lang_size_sections_1 (constructor_list.head,
          output_section_statement,
          &s->wild_statement.children.head,
          fill, dot, relax, check_regions);
   break;

 case 139:
   {
     unsigned int size = 0;

     s->data_statement.output_offset =
       dot - output_section_statement->bfd_section->vma;
     s->data_statement.output_section =
       output_section_statement->bfd_section;



     exp_fold_tree (s->data_statement.exp, bfd_abs_section_ptr, &dot);

     switch (s->data_statement.type)
       {
       default:
  abort ();
       case 145:
       case 143:
  size = QUAD_SIZE;
  break;
       case 146:
  size = LONG_SIZE;
  break;
       case 144:
  size = SHORT_SIZE;
  break;
       case 147:
  size = BYTE_SIZE;
  break;
       }
     if (size < TO_SIZE ((unsigned) 1))
       size = TO_SIZE ((unsigned) 1);
     dot += TO_ADDR (size);
     output_section_statement->bfd_section->size += size;
   }
   break;

 case 130:
   {
     int size;

     s->reloc_statement.output_offset =
       dot - output_section_statement->bfd_section->vma;
     s->reloc_statement.output_section =
       output_section_statement->bfd_section;
     size = bfd_get_reloc_size (s->reloc_statement.howto);
     dot += TO_ADDR (size);
     output_section_statement->bfd_section->size += size;
   }
   break;

 case 128:
   dot = lang_size_sections_1 (s->wild_statement.children.head,
          output_section_statement,
          &s->wild_statement.children.head,
          fill, dot, relax, check_regions);
   break;

 case 134:
   link_info.create_object_symbols_section =
     output_section_statement->bfd_section;
   break;

 case 132:
 case 129:
   break;

 case 136:
   {
     asection *i;

     i = (*prev)->input_section.section;
     if (relax)
       {
  bfd_boolean again;

  if (! bfd_relax_section (i->owner, i, &link_info, &again))
    einfo (_("%P%F: can't relax section: %E\n"));
  if (again)
    *relax = TRUE;
       }
     dot = size_input_section (prev, output_section_statement,
          output_section_statement->fill, dot);
   }
   break;

 case 135:
   break;

 case 138:
   s->fill_statement.output_section =
     output_section_statement->bfd_section;

   fill = s->fill_statement.fill;
   break;

 case 141:
   {
     bfd_vma newdot = dot;
     etree_type *tree = s->assignment_statement.exp;

     exp_fold_tree (tree,
      output_section_statement->bfd_section,
      &newdot);


     if ((tree->type.node_class == etree_provided
   || tree->type.node_class == etree_assign)
  && (tree->assign.dst [0] != '.'
      || tree->assign.dst [1] != '\0'))
       output_section_statement->section_relative_symbol = 1;

     if (!output_section_statement->ignored)
       {
  if (output_section_statement == abs_output_section)
    {


      lang_memory_region_lookup (DEFAULT_MEMORY_REGION,
            FALSE)->current = newdot;
    }
  else if (newdot != dot)
    {



      insert_pad (&s->header.next, fill, TO_SIZE (newdot - dot),
    output_section_statement->bfd_section, dot);


      s = s->header.next;





      if (!(output_section_statement->flags
     & (SEC_NEVER_LOAD | SEC_ALLOC)))
        output_section_statement->bfd_section->flags |= SEC_ALLOC;
    }
  dot = newdot;
       }
   }
   break;

 case 131:





   s->padding_statement.size = 0;






   s->padding_statement.output_offset
     = dot - output_section_statement->bfd_section->vma;
   break;

 case 137:
   dot = lang_size_sections_1 (s->group_statement.children.head,
          output_section_statement,
          &s->group_statement.children.head,
          fill, dot, relax, check_regions);
   break;

 default:
   FAIL ();
   break;


 case 142:
   break;
 }
      prev = &s->header.next;
    }
  return dot;
}
