
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_type ;


 char at (int ,unsigned int) ;
 int catchar (int *,char) ;
 int cattext (int *,char*) ;
 int init_string (int *) ;
 scalar_t__ islower (unsigned char) ;
 int overwrite_string (int ,int *) ;
 int pc ;
 int tos ;

__attribute__((used)) static void
courierize ()
{
  string_type out;
  unsigned int idx = 0;
  int command = 0;

  init_string (&out);

  while (at (tos, idx))
    {
      if (at (tos, idx) == '\n'
   && (at (tos, idx +1 ) == '.'
       || at (tos, idx + 1) == '|'))
 {
   cattext (&out, "\n@example\n");
   do
     {
       idx += 2;

       while (at (tos, idx) && at (tos, idx) != '\n')
  {
    if (command > 1)
      {


        if (at (tos, idx) == '{')
   ++command;
        else if (at (tos, idx) == '}')
   --command;
      }
    else if (command != 0)
      {
        if (at (tos, idx) == '{')
   ++command;
        else if (!islower ((unsigned char) at (tos, idx)))
   --command;
      }
    else if (at (tos, idx) == '@'
      && islower ((unsigned char) at (tos, idx + 1)))
      {
        ++command;
      }
    else if (at (tos, idx) == '{' && at (tos, idx + 1) == '*')
      {
        cattext (&out, "/*");
        idx += 2;
        continue;
      }
    else if (at (tos, idx) == '*' && at (tos, idx + 1) == '}')
      {
        cattext (&out, "*/");
        idx += 2;
        continue;
      }
    else if (at (tos, idx) == '{'
      || at (tos, idx) == '}')
      {
        catchar (&out, '@');
      }

    catchar (&out, at (tos, idx));
    idx++;
  }
       catchar (&out, '\n');
     }
   while (at (tos, idx) == '\n'
   && ((at (tos, idx + 1) == '.')
       || (at (tos, idx + 1) == '|')))
     ;
   cattext (&out, "@end example");
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
