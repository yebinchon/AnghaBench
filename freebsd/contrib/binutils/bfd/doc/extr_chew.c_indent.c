
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_type ;


 int at (int *,int) ;
 int catchar (int *,int) ;
 int cattext (int *,char*) ;
 int delete_string (int *) ;
 int init_string (int *) ;
 int pc ;
 int * tos ;

__attribute__((used)) static void
indent ()
{
  string_type out;
  int tab = 0;
  int idx = 0;
  int ol = 0;
  init_string (&out);
  while (at (tos, idx))
    {
      switch (at (tos, idx))
 {
 case '\n':
   cattext (&out, "\n");
   idx++;
   if (tab && at (tos, idx))
     {
       cattext (&out, "    ");
     }
   ol = 0;
   break;
 case '(':
   tab++;
   if (ol == 0)
     cattext (&out, "   ");
   idx++;
   cattext (&out, "(");
   ol = 1;
   break;
 case ')':
   tab--;
   cattext (&out, ")");
   idx++;
   ol = 1;

   break;
 default:
   catchar (&out, at (tos, idx));
   ol = 1;

   idx++;
   break;
 }
    }

  pc++;
  delete_string (tos);
  *tos = out;

}
