
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_20__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_19__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;


struct TYPE_28__ {int * next; int * abfd; } ;
struct TYPE_27__ {int value; TYPE_20__* section; } ;
struct TYPE_29__ {TYPE_3__ undef; TYPE_2__ def; } ;
struct bfd_link_hash_entry {TYPE_4__ u; int type; } ;
struct TYPE_31__ {TYPE_9__* bfd_section; int processed_vma; int * load_base; int processed_lma; } ;
typedef TYPE_6__ lang_output_section_statement_type ;
struct TYPE_32__ {int length; int origin; } ;
typedef TYPE_7__ lang_memory_region_type ;
struct TYPE_30__ {char* name; } ;
struct TYPE_25__ {int node_code; } ;
struct TYPE_33__ {TYPE_5__ name; TYPE_1__ type; } ;
typedef TYPE_8__ etree_type ;
typedef int bfd_vma ;
struct TYPE_34__ {int lma; int size; int alignment_power; } ;
typedef TYPE_9__ asection ;
struct TYPE_26__ {int output_offset; TYPE_9__* output_section; } ;
struct TYPE_24__ {struct bfd_link_hash_entry* undefs_tail; } ;
struct TYPE_21__ {int value; int valid_p; int section; } ;
struct TYPE_23__ {int phase; int assigning_to_dot; int dot; TYPE_11__ result; } ;
struct TYPE_22__ {TYPE_19__* hash; } ;






 int FAIL () ;
 int FALSE ;






 int TRUE ;
 int _ (char*) ;
 int bfd_abs_section_ptr ;
 int bfd_emul_get_commonpagesize (int ) ;
 int bfd_emul_get_maxpagesize (int ) ;
 int bfd_is_abs_section (TYPE_20__*) ;
 int bfd_link_add_undef (TYPE_19__*,struct bfd_link_hash_entry*) ;
 int bfd_link_hash_common ;
 int bfd_link_hash_defined ;
 int bfd_link_hash_defweak ;
 int bfd_link_hash_new ;
 int bfd_link_hash_undefined ;
 int bfd_octets_per_byte (int ) ;
 int bfd_sizeof_headers (int ,TYPE_12__*) ;
 struct bfd_link_hash_entry* bfd_wrapped_link_hash_lookup (int ,TYPE_12__*,char*,int ,int ,int ) ;
 int default_target ;
 int einfo (int ,...) ;
 int exp_fold_tree_1 (int *) ;
 TYPE_16__ expld ;
 int lang_final_phase_enum ;
 int lang_first_phase_enum ;
 int lang_mark_phase_enum ;
 TYPE_7__* lang_memory_region_lookup (char*,int ) ;
 TYPE_6__* lang_output_section_find (char*) ;
 int lang_statement_iteration ;
 int lang_symbol_definition_iteration (char*) ;
 int lang_track_definedness (char*) ;
 TYPE_12__ link_info ;
 int make_abs () ;
 int memset (TYPE_11__*,int ,int) ;
 int new_abs (int) ;
 int new_rel (int,int *,TYPE_9__*) ;
 int new_rel_from_abs (int ) ;
 int output_bfd ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
fold_name (etree_type *tree)
{
  memset (&expld.result, 0, sizeof (expld.result));

  switch (tree->type.node_code)
    {
    case 128:
      if (expld.phase != lang_first_phase_enum)
 {
   bfd_vma hdr_size = 0;


   if (expld.phase != lang_mark_phase_enum)
     hdr_size = bfd_sizeof_headers (output_bfd, &link_info);
   new_abs (hdr_size);
 }
      break;

    case 134:
      if (expld.phase == lang_first_phase_enum)
 lang_track_definedness (tree->name.name);
      else
 {
   struct bfd_link_hash_entry *h;
   int def_iteration
     = lang_symbol_definition_iteration (tree->name.name);

   h = bfd_wrapped_link_hash_lookup (output_bfd, &link_info,
         tree->name.name,
         FALSE, FALSE, TRUE);
   expld.result.value = (h != ((void*)0)
    && (h->type == bfd_link_hash_defined
        || h->type == bfd_link_hash_defweak
        || h->type == bfd_link_hash_common)
    && (def_iteration == lang_statement_iteration
        || def_iteration == -1));
   expld.result.section = bfd_abs_section_ptr;
   expld.result.valid_p = TRUE;
 }
      break;

    case 131:
      if (expld.phase == lang_first_phase_enum)
 ;
      else if (tree->name.name[0] == '.' && tree->name.name[1] == 0)
 new_rel_from_abs (expld.dot);
      else
 {
   struct bfd_link_hash_entry *h;

   h = bfd_wrapped_link_hash_lookup (output_bfd, &link_info,
         tree->name.name,
         TRUE, FALSE, TRUE);
   if (!h)
     einfo (_("%P%F: bfd_link_hash_lookup failed: %E\n"));
   else if (h->type == bfd_link_hash_defined
     || h->type == bfd_link_hash_defweak)
     {
       if (bfd_is_abs_section (h->u.def.section))
  new_abs (h->u.def.value);
       else
  {
    asection *output_section;

    output_section = h->u.def.section->output_section;
    if (output_section == ((void*)0))
      {
        if (expld.phase != lang_mark_phase_enum)
   einfo (_("%X%S: unresolvable symbol `%s'"
     " referenced in expression\n"),
          tree->name.name);
      }
    else
      new_rel (h->u.def.value + h->u.def.section->output_offset,
        ((void*)0), output_section);
  }
     }
   else if (expld.phase == lang_final_phase_enum
     || expld.assigning_to_dot)
     einfo (_("%F%S: undefined symbol `%s' referenced in expression\n"),
     tree->name.name);
   else if (h->type == bfd_link_hash_new)
     {
       h->type = bfd_link_hash_undefined;
       h->u.undef.abfd = ((void*)0);
       if (h->u.undef.next == ((void*)0) && h != link_info.hash->undefs_tail)
  bfd_link_add_undef (link_info.hash, h);
     }
 }
      break;

    case 137:
      if (expld.phase != lang_first_phase_enum)
 {
   lang_output_section_statement_type *os;

   os = lang_output_section_find (tree->name.name);
   if (os == ((void*)0))
     {
       if (expld.phase == lang_final_phase_enum)
  einfo (_("%F%S: undefined section `%s' referenced in expression\n"),
         tree->name.name);
     }
   else if (os->processed_vma)
     new_rel (0, ((void*)0), os->bfd_section);
 }
      break;

    case 132:
      if (expld.phase != lang_first_phase_enum)
 {
   lang_output_section_statement_type *os;

   os = lang_output_section_find (tree->name.name);
   if (os == ((void*)0))
     {
       if (expld.phase == lang_final_phase_enum)
  einfo (_("%F%S: undefined section `%s' referenced in expression\n"),
         tree->name.name);
     }
   else if (os->processed_lma)
     {
       if (os->load_base == ((void*)0))
  new_abs (os->bfd_section->lma);
       else
  {
    exp_fold_tree_1 (os->load_base);
    make_abs ();
  }
     }
 }
      break;

    case 129:
    case 136:
      if (expld.phase != lang_first_phase_enum)
 {
   lang_output_section_statement_type *os;

   os = lang_output_section_find (tree->name.name);
   if (os == ((void*)0))
     {
       if (expld.phase == lang_final_phase_enum)
  einfo (_("%F%S: undefined section `%s' referenced in expression\n"),
         tree->name.name);
       new_abs (0);
     }
   else if (os->processed_vma)
     {
       bfd_vma val;

       if (tree->type.node_code == 129)
  val = os->bfd_section->size / bfd_octets_per_byte (output_bfd);
       else
  val = (bfd_vma)1 << os->bfd_section->alignment_power;

       new_abs (val);
     }
 }
      break;

    case 133:
      {
        lang_memory_region_type *mem;

        mem = lang_memory_region_lookup (tree->name.name, FALSE);
        if (mem != ((void*)0))
          new_abs (mem->length);
        else
          einfo (_("%F%S: undefined MEMORY region `%s'"
     " referenced in expression\n"), tree->name.name);
      }
      break;

    case 130:
      {
        lang_memory_region_type *mem;

        mem = lang_memory_region_lookup (tree->name.name, FALSE);
        if (mem != ((void*)0))
          new_abs (mem->origin);
        else
          einfo (_("%F%S: undefined MEMORY region `%s'"
     " referenced in expression\n"), tree->name.name);
      }
      break;

    case 135:
      if (strcmp (tree->name.name, "MAXPAGESIZE") == 0)
 new_abs (bfd_emul_get_maxpagesize (default_target));
      else if (strcmp (tree->name.name, "COMMONPAGESIZE") == 0)
 new_abs (bfd_emul_get_commonpagesize (default_target));
      else
 einfo (_("%F%S: unknown constant `%s' referenced in expression\n"),
        tree->name.name);
      break;

    default:
      FAIL ();
      break;
    }
}
