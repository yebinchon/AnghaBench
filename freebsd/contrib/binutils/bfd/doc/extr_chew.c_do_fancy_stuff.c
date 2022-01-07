
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_type ;


 char at (int *,unsigned int) ;
 int catchar (int *,char) ;
 int cattext (int *,char*) ;
 int delete_string (int *) ;
 int init_string (int *) ;
 int isspace (unsigned char) ;
 int pc ;
 int * tos ;

__attribute__((used)) static void
do_fancy_stuff ()
{
  unsigned int idx = 0;
  string_type out;
  init_string (&out);
  while (at (tos, idx))
    {
      if (at (tos, idx) == '<'
   && at (tos, idx + 1) == '<'
   && !isspace ((unsigned char) at (tos, idx + 2)))
 {

   idx += 2;
   cattext (&out, "@code{");
   while (at (tos, idx)
   && at (tos, idx) != '>' )
     {
       catchar (&out, at (tos, idx));
       idx++;

     }
   cattext (&out, "}");
   idx += 2;
 }
      else
 {
   catchar (&out, at (tos, idx));
   idx++;
 }
    }
  delete_string (tos);
  *tos = out;
  pc++;

}
