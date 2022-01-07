
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ASTRDUP (char const*) ;
 char* concat (char* const,char*,char* const,...) ;
 int data_type ;
 char* reconcat (char*,char*,char*,char*,int *) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static char *
affix_data_type (const char *param)
{
  char *const type_or_decl = ASTRDUP (param);
  char *p = type_or_decl;
  char *qualifiers_then_data_type;
  char saved;



  for (;;)
    {
      if (!strncmp (p, "volatile ", 9))
 {
   p += 9;
   continue;
 }
      if (!strncmp (p, "const ", 6))
 {
   p += 6;
   continue;
 }
      break;
    }




  if (p == type_or_decl)
    return concat (data_type, " ", type_or_decl, ((void*)0));

  saved = *p;
  *p = '\0';
  qualifiers_then_data_type = concat (type_or_decl, data_type, ((void*)0));
  *p = saved;
  return reconcat (qualifiers_then_data_type,
     qualifiers_then_data_type, " ", p, ((void*)0));
}
