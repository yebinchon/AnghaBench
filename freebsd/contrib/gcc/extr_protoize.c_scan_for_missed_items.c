
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* hash_entry; TYPE_3__* defs_decs; } ;
typedef TYPE_2__ file_info ;
struct TYPE_7__ {int const line; scalar_t__ is_func_def; struct TYPE_7__* next_in_file; } ;
typedef TYPE_3__ def_dec_info ;
struct TYPE_5__ {int symbol; } ;


 scalar_t__ ISALPHA (unsigned char const) ;
 scalar_t__ ISSPACE (unsigned char const) ;
 char* alloca (size_t) ;
 char* careful_find_l_paren (char const*) ;
 int check_source (int,char const*) ;
 char* clean_text_base ;
 char* clean_text_limit ;
 int identify_lineno (char const*) ;
 scalar_t__ is_id_char (char const) ;
 int notice (char*,int ,...) ;
 int pname ;
 scalar_t__ setjmp (int ) ;
 int shortpath (int *,int ) ;
 int source_confusion_recovery ;
 int strcmp (char*,char const* const) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static void
scan_for_missed_items (const file_info *file_p)
{
  static const char *scan_p;
  const char *limit = clean_text_limit - 3;
  static const char *backup_limit;

  backup_limit = clean_text_base - 1;

  for (scan_p = clean_text_base; scan_p < limit; scan_p++)
    {
      if (*scan_p == ')')
 {
   static const char *last_r_paren;
   const char *ahead_p;

   last_r_paren = scan_p;

   for (ahead_p = scan_p + 1; ISSPACE ((const unsigned char)*ahead_p); )
     check_source (++ahead_p < limit, limit);

   scan_p = ahead_p - 1;

   if (ISALPHA ((const unsigned char)*ahead_p) || *ahead_p == '{')
     {
       const char *last_l_paren;
       const int lineno = identify_lineno (ahead_p);

       if (setjmp (source_confusion_recovery))
  continue;




       do
  {
    last_l_paren = careful_find_l_paren (last_r_paren);
    for (last_r_paren = last_l_paren-1;
         ISSPACE ((const unsigned char)*last_r_paren); )
      check_source (--last_r_paren >= backup_limit, backup_limit);
  }
       while (*last_r_paren == ')');

       if (is_id_char (*last_r_paren))
  {
    const char *id_limit = last_r_paren + 1;
    const char *id_start;
    size_t id_length;
    const def_dec_info *dd_p;

    for (id_start = id_limit-1; is_id_char (*id_start); )
      check_source (--id_start >= backup_limit, backup_limit);
    id_start++;
    backup_limit = id_start;
    if ((id_length = (size_t) (id_limit - id_start)) == 0)
      goto not_missed;

    {
      char *func_name = alloca (id_length + 1);
      static const char * const stmt_keywords[]
        = { "if", "else", "do", "while", "for", "switch", "case", "return", 0 };
      const char * const *stmt_keyword;

      strncpy (func_name, id_start, id_length);
      func_name[id_length] = '\0';




      for (stmt_keyword = stmt_keywords; *stmt_keyword; stmt_keyword++)
        if (!strcmp (func_name, *stmt_keyword))
   goto not_missed;
      for (dd_p = file_p->defs_decs; dd_p; dd_p = dd_p->next_in_file)
        if (dd_p->is_func_def && dd_p->line == lineno)
   goto not_missed;




      notice ("%s: %d: warning: '%s' excluded by preprocessing\n",
       shortpath (((void*)0), file_p->hash_entry->symbol),
       identify_lineno (id_start), func_name);
      notice ("%s: function definition not converted\n",
       pname);
    }
  not_missed: ;
         }
     }
 }
    }
}
