
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vla_hwint_t ;


 scalar_t__ VEC_index (int ,int ,size_t) ;
 size_t VEC_length (int ,int ) ;
 int fprintf (int ,char*,long) ;
 int fputs (char*,int ) ;
 int output_file ;
 int vect_el_t ;

__attribute__((used)) static void
output_vect (vla_hwint_t vect)
{
  int els_on_line;
  size_t vect_length = VEC_length (vect_el_t, vect);
  size_t i;

  els_on_line = 1;
  if (vect_length == 0)
    fputs ("0 /* This is dummy el because the vect is empty */", output_file);
  else
    for (i = 0; i < vect_length; i++)
      {
 fprintf (output_file, "%5ld", (long) VEC_index (vect_el_t, vect, i));
 if (els_on_line == 10)
   {
     els_on_line = 0;
     fputs (",\n", output_file);
   }
 else if (i < vect_length-1)
   fputs (", ", output_file);
 els_on_line++;
      }
}
