
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_type ;


 char at (int *,int) ;
 int catchar (int *,char) ;
 int delete_string (int *) ;
 int init_string (int *) ;
 scalar_t__ isspace (unsigned char) ;
 int pc ;
 int * tos ;

__attribute__((used)) static void
kill_bogus_lines ()
{
  int sl;

  int idx = 0;
  int c;
  int dot = 0;

  string_type out;
  init_string (&out);

  while (at (tos, idx) == '\n')
    {
      idx++;
    }
  c = idx;



  if (at (tos, idx) == '.')
    catchar (&out, '\n');


  while (at (tos, idx))
    {
      idx++;
    }


  idx--;

  while (idx && isspace ((unsigned char) at (tos, idx)))
    idx--;
  idx++;



  sl = 1;

  while (c < idx)
    {
      if (at (tos, c) == '\n'
   && at (tos, c + 1) == '\n'
   && at (tos, c + 2) == '.')
 {

   c++;
 }
      else if (at (tos, c) == '.' && sl)
 {

   dot = 2;
 }
      else if (at (tos, c) == '\n'
        && at (tos, c + 1) == '\n'
        && dot)
 {
   c++;

 }

      catchar (&out, at (tos, c));
      if (at (tos, c) == '\n')
 {
   sl = 1;

   if (dot == 2)
     dot = 1;
   else
     dot = 0;
 }
      else
 sl = 0;

      c++;

    }


  catchar (&out, '\n');
  pc++;
  delete_string (tos);
  *tos = out;

}
