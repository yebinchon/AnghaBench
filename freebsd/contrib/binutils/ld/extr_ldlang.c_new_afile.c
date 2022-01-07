
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lang_statement_union_type ;
struct TYPE_7__ {int * next; int type; } ;
struct TYPE_8__ {char const* target; char const* filename; char const* local_sym_name; int * next_real_file; void* loaded; int whole_archive; int as_needed; int add_needed; int dynamic; scalar_t__ symbol_count; int * next; int * asymbols; int * the_bfd; void* search_dirs_flag; void* just_syms_flag; void* real; void* is_archive; void* sysrooted; TYPE_1__ header; } ;
typedef TYPE_2__ lang_input_statement_type ;
typedef int lang_input_file_enum_type ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_9__ {int dynamic_link; } ;


 int FAIL () ;
 void* FALSE ;
 void* TRUE ;
 int add_needed ;
 int as_needed ;
 char const* concat (char*,char const*,int *) ;
 TYPE_6__ config ;
 int input_file_chain ;
 void* lang_has_input_file ;






 int lang_input_statement ;
 int lang_input_statement_enum ;
 int lang_statement_append (int *,int *,int **) ;
 void* ldlang_sysrooted_script ;
 TYPE_2__* new_stat (int ,int ) ;
 TYPE_2__* stat_alloc (int) ;
 int stat_ptr ;
 int whole_archive ;

__attribute__((used)) static lang_input_statement_type *
new_afile (const char *name,
    lang_input_file_enum_type file_type,
    const char *target,
    bfd_boolean add_to_list)
{
  lang_input_statement_type *p;

  if (add_to_list)
    p = new_stat (lang_input_statement, stat_ptr);
  else
    {
      p = stat_alloc (sizeof (lang_input_statement_type));
      p->header.type = lang_input_statement_enum;
      p->header.next = ((void*)0);
    }

  lang_has_input_file = TRUE;
  p->target = target;
  p->sysrooted = FALSE;

  if (file_type == 131
      && name[0] == ':' && name[1] != '\0')
    {
      file_type = 129;
      name = name + 1;
    }

  switch (file_type)
    {
    case 128:
      p->filename = name;
      p->is_archive = FALSE;
      p->real = TRUE;
      p->local_sym_name = name;
      p->just_syms_flag = TRUE;
      p->search_dirs_flag = FALSE;
      break;
    case 133:
      p->filename = name;
      p->is_archive = FALSE;
      p->real = FALSE;
      p->local_sym_name = name;
      p->just_syms_flag = FALSE;
      p->search_dirs_flag = FALSE;
      break;
    case 131:
      p->is_archive = TRUE;
      p->filename = name;
      p->real = TRUE;
      p->local_sym_name = concat ("-l", name, ((void*)0));
      p->just_syms_flag = FALSE;
      p->search_dirs_flag = TRUE;
      break;
    case 130:
      p->filename = name;
      p->is_archive = FALSE;
      p->real = FALSE;
      p->local_sym_name = name;
      p->just_syms_flag = FALSE;
      p->search_dirs_flag = TRUE;
      break;
    case 129:
      p->sysrooted = ldlang_sysrooted_script;
      p->filename = name;
      p->is_archive = FALSE;
      p->real = TRUE;
      p->local_sym_name = name;
      p->just_syms_flag = FALSE;
      p->search_dirs_flag = TRUE;
      break;
    case 132:
      p->filename = name;
      p->is_archive = FALSE;
      p->real = TRUE;
      p->local_sym_name = name;
      p->just_syms_flag = FALSE;
      p->search_dirs_flag = FALSE;
      break;
    default:
      FAIL ();
    }
  p->the_bfd = ((void*)0);
  p->asymbols = ((void*)0);
  p->next_real_file = ((void*)0);
  p->next = ((void*)0);
  p->symbol_count = 0;
  p->dynamic = config.dynamic_link;
  p->add_needed = add_needed;
  p->as_needed = as_needed;
  p->whole_archive = whole_archive;
  p->loaded = FALSE;
  lang_statement_append (&input_file_chain,
    (lang_statement_union_type *) p,
    &p->next_real_file);
  return p;
}
