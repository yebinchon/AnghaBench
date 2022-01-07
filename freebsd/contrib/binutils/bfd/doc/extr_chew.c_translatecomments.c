
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_type ;


 char at (int ,unsigned int) ;
 int catchar (int *,char) ;
 int cattext (int *,char*) ;
 int init_string (int *) ;
 int overwrite_string (int ,int *) ;
 int pc ;
 int tos ;

__attribute__((used)) static void
translatecomments ()
{
  unsigned int idx = 0;
  string_type out;
  init_string (&out);

  while (at (tos, idx))
    {
      if (at (tos, idx) == '{' && at (tos, idx + 1) == '*')
 {
   cattext (&out, "/*");
   idx += 2;
 }
      else if (at (tos, idx) == '*' && at (tos, idx + 1) == '}')
 {
   cattext (&out, "*/");
   idx += 2;
 }
      else
 {
   catchar (&out, at (tos, idx));
   idx++;
 }
    }

  overwrite_string (tos, &out);

  pc++;
}
