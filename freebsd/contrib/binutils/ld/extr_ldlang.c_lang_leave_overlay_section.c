
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lang_output_section_phdr_list ;
typedef int fill_type ;
struct TYPE_2__ {char* name; } ;


 int DEFAULT_MEMORY_REGION ;
 int FALSE ;
 scalar_t__ ISALNUM (char const) ;
 int LOADADDR ;
 int SIZEOF ;
 TYPE_1__* current_section ;
 int exp_binop (char,int ,int ) ;
 int exp_nameop (int ,char const*) ;
 int exp_provide (char*,int ,int ) ;
 int free (char*) ;
 int lang_add_assignment (int ) ;
 int lang_leave_output_section_statement (int *,int ,int *,int ) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char const*) ;
 char* xmalloc (int) ;

void
lang_leave_overlay_section (fill_type *fill,
       lang_output_section_phdr_list *phdrs)
{
  const char *name;
  char *clean, *s2;
  const char *s1;
  char *buf;

  name = current_section->name;





  lang_leave_output_section_statement (fill, DEFAULT_MEMORY_REGION, phdrs, 0);



  clean = xmalloc (strlen (name) + 1);
  s2 = clean;
  for (s1 = name; *s1 != '\0'; s1++)
    if (ISALNUM (*s1) || *s1 == '_')
      *s2++ = *s1;
  *s2 = '\0';

  buf = xmalloc (strlen (clean) + sizeof "__load_start_");
  sprintf (buf, "__load_start_%s", clean);
  lang_add_assignment (exp_provide (buf,
        exp_nameop (LOADADDR, name),
        FALSE));

  buf = xmalloc (strlen (clean) + sizeof "__load_stop_");
  sprintf (buf, "__load_stop_%s", clean);
  lang_add_assignment (exp_provide (buf,
        exp_binop ('+',
            exp_nameop (LOADADDR, name),
            exp_nameop (SIZEOF, name)),
        FALSE));

  free (clean);
}
