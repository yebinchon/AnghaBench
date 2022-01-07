
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {TYPE_3__* the_bfd; int local_sym_name; scalar_t__ search_dirs_flag; int dynamic; int target; } ;
typedef TYPE_2__ lang_input_statement_type ;
typedef int bfd_boolean ;
struct TYPE_19__ {int flags; } ;
typedef TYPE_3__ bfd ;
struct TYPE_21__ {scalar_t__ warn_search_mismatch; int accept_unknown_input_arch; int endian; } ;
struct TYPE_17__ {char* str; } ;
struct TYPE_20__ {char* name; TYPE_1__ bigint; } ;
typedef int FILE ;


 int DYNAMIC ;



 int FALSE ;
 int INPUT_SCRIPT ;




 int TRUE ;


 int _ (char*) ;
 int bfd_arch_get_compatible (TYPE_3__*,TYPE_3__*,int ) ;
 int bfd_archive ;
 scalar_t__ bfd_check_format (TYPE_3__*,int ) ;
 int bfd_close (TYPE_3__*) ;
 scalar_t__ bfd_error_file_not_recognized ;
 scalar_t__ bfd_error_invalid_target ;
 scalar_t__ bfd_get_error () ;
 scalar_t__ bfd_get_flavour (TYPE_3__*) ;
 int bfd_object ;
 TYPE_3__* bfd_openr (char const*,int ) ;
 TYPE_3__* bfd_openr_next_archived_file (TYPE_3__*,int *) ;
 scalar_t__ bfd_target_xcoff_flavour ;
 TYPE_8__ command_line ;
 int einfo (int ,char const*,...) ;
 int fclose (int *) ;
 int free (char*) ;
 int info_msg (int ,char const*) ;
 int input_selected ;
 int lang_get_output_target () ;
 int ldemul_unrecognized_file (TYPE_2__*) ;
 int ldfile_assumed_script ;
 int ldfile_open_command_file (char const*) ;
 int ldlex_both () ;
 int ldlex_popstate () ;
 TYPE_3__* output_bfd ;
 int parser_input ;
 int strcmp (char*,int ) ;
 scalar_t__ trace_file_tries ;
 int yylex () ;
 TYPE_4__ yylval ;

bfd_boolean
ldfile_try_open_bfd (const char *attempt,
       lang_input_statement_type *entry)
{
  entry->the_bfd = bfd_openr (attempt, entry->target);

  if (trace_file_tries)
    {
      if (entry->the_bfd == ((void*)0))
 info_msg (_("attempt to open %s failed\n"), attempt);
      else
 info_msg (_("attempt to open %s succeeded\n"), attempt);
    }

  if (entry->the_bfd == ((void*)0))
    {
      if (bfd_get_error () == bfd_error_invalid_target)
 einfo (_("%F%P: invalid BFD target `%s'\n"), entry->target);
      return FALSE;
    }







  if (entry->search_dirs_flag || !entry->dynamic)
    {
      bfd *check;

      if (bfd_check_format (entry->the_bfd, bfd_archive))
 check = bfd_openr_next_archived_file (entry->the_bfd, ((void*)0));
      else
 check = entry->the_bfd;

      if (check != ((void*)0))
 {
   if (! bfd_check_format (check, bfd_object))
     {
       if (check == entry->the_bfd
    && entry->search_dirs_flag
    && bfd_get_error () == bfd_error_file_not_recognized
    && ! ldemul_unrecognized_file (entry))
  {
    int token, skip = 0;
    char *arg, *arg1, *arg2, *arg3;
    extern FILE *yyin;


    ldfile_open_command_file (attempt);

    ldfile_assumed_script = TRUE;
    parser_input = input_selected;
    ldlex_both ();
    token = INPUT_SCRIPT;
    while (token != 0)
      {
        switch (token)
   {
   case 130:
     if ((token = yylex ()) != '(')
       continue;
     if ((token = yylex ()) != 131)
       continue;
     arg1 = yylval.name;
     arg2 = ((void*)0);
     arg3 = ((void*)0);
     token = yylex ();
     if (token == ',')
       {
         if ((token = yylex ()) != 131)
    {
      free (arg1);
      continue;
    }
         arg2 = yylval.name;
         if ((token = yylex ()) != ','
      || (token = yylex ()) != 131)
    {
      free (arg1);
      free (arg2);
      continue;
    }
         arg3 = yylval.name;
         token = yylex ();
       }
     if (token == ')')
       {
         switch (command_line.endian)
    {
    default:
    case 134:
      arg = arg1; break;
    case 136:
      arg = arg2 ? arg2 : arg1; break;
    case 135:
      arg = arg3 ? arg3 : arg1; break;
    }
         if (strcmp (arg, lang_get_output_target ()) != 0)
    skip = 1;
       }
     free (arg1);
     if (arg2) free (arg2);
     if (arg3) free (arg3);
     break;
   case 131:
   case 132:
   case 129:
   case 128:
     free (yylval.name);
     break;
   case 133:
     if (yylval.bigint.str)
       free (yylval.bigint.str);
     break;
   }
        token = yylex ();
      }
    ldlex_popstate ();
    ldfile_assumed_script = FALSE;
    fclose (yyin);
    yyin = ((void*)0);
    if (skip)
      {
        if (command_line.warn_search_mismatch)
   einfo (_("%P: skipping incompatible %s "
     "when searching for %s\n"),
          attempt, entry->local_sym_name);
        bfd_close (entry->the_bfd);
        entry->the_bfd = ((void*)0);
        return FALSE;
      }
  }
       return TRUE;
     }

   if (!entry->dynamic && (entry->the_bfd->flags & DYNAMIC) != 0)
     {
       einfo (_("%F%P: attempted static link of dynamic object `%s'\n"),
       attempt);
       bfd_close (entry->the_bfd);
       entry->the_bfd = ((void*)0);
       return FALSE;
     }

   if (entry->search_dirs_flag
       && !bfd_arch_get_compatible (check, output_bfd,
        command_line.accept_unknown_input_arch)

       && ! (bfd_get_flavour (check) == bfd_target_xcoff_flavour
      && bfd_get_flavour (output_bfd) == bfd_target_xcoff_flavour
      && bfd_check_format (entry->the_bfd, bfd_archive)))
     {
       if (command_line.warn_search_mismatch)
  einfo (_("%P: skipping incompatible %s "
    "when searching for %s\n"),
         attempt, entry->local_sym_name);
       bfd_close (entry->the_bfd);
       entry->the_bfd = ((void*)0);
       return FALSE;
     }
 }
    }

  return TRUE;
}
