
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISALPHA (unsigned char) ;
 scalar_t__ ISSPACE (unsigned char const) ;
 int check_source (int,char const*) ;
 char const* clean_read_ptr ;
 char* forward_to_next_token_char (char const*) ;

__attribute__((used)) static const char *
find_rightmost_formals_list (const char *clean_text_p)
{
  const char *end_formals;
  for (end_formals = clean_text_p; *end_formals != '\n'; end_formals++)
    continue;
  end_formals--;
  while (1)
    {
      char ch;
      const char *l_brace_p;



      while (*end_formals != ')')
 {
   if (ISSPACE ((const unsigned char)*end_formals))
     while (ISSPACE ((const unsigned char)*end_formals))
       check_source (--end_formals > clean_read_ptr, 0);
   else
     check_source (--end_formals > clean_read_ptr, 0);
 }

      ch = *(l_brace_p = forward_to_next_token_char (end_formals));
      if ((ch == '{') || ISALPHA ((unsigned char) ch))
 break;





      check_source (--end_formals > clean_read_ptr, 0);
    }



  return end_formals;
}
