
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_type ;


 scalar_t__ NO_PARAMS ;
 char at (int ,unsigned int) ;
 int catchar (int *,char) ;
 int catstr (int *,int ) ;
 int cattext (int *,char*) ;
 scalar_t__ find (int ,char*) ;
 int init_string (int *) ;
 scalar_t__ isspace (unsigned char) ;
 int overwrite_string (int ,int *) ;
 int pc ;
 int tos ;

__attribute__((used)) static void
paramstuff ()
{
  unsigned int openp;
  unsigned int fname;
  unsigned int idx;
  unsigned int len;
  string_type out;
  init_string (&out);




  if (1
      || find (tos, "PARAMS") || find (tos, "PROTO") || !find (tos, "("))
    {
      catstr (&out, tos);
    }
  else
    {

      for (openp = 0; at (tos, openp) != '(' && at (tos, openp); openp++)
 ;

      fname = openp;

      fname--;
      while (fname && isspace ((unsigned char) at (tos, fname)))
 fname--;
      while (fname
      && !isspace ((unsigned char) at (tos,fname))
      && at (tos,fname) != '*')
 fname--;

      fname++;



      for (len = fname; 0 < len; len--)
 {
   if (!isspace ((unsigned char) at (tos, len - 1)))
     break;
 }
      for (idx = 0; idx < len; idx++)
 catchar (&out, at (tos, idx));

      cattext (&out, "\n");



      for (len = openp; 0 < len; len--)
 {
   if (!isspace ((unsigned char) at (tos, len - 1)))
     break;
 }
      for (idx = fname; idx < len; idx++)
 catchar (&out, at (tos, idx));

      cattext (&out, " PARAMS (");

      for (idx = openp; at (tos, idx) && at (tos, idx) != ';'; idx++)
 catchar (&out, at (tos, idx));

      cattext (&out, ");\n\n");
    }
  overwrite_string (tos, &out);
  pc++;

}
