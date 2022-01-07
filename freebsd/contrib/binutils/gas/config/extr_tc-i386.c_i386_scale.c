
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_2__ {int log2_scale_factor; scalar_t__ index_reg; } ;


 int _ (char*) ;
 int as_bad (int ,char*) ;
 int as_warn (int ,int) ;
 int get_absolute_expression () ;
 TYPE_1__ i ;
 char* input_line_pointer ;

__attribute__((used)) static char *
i386_scale (char *scale)
{
  offsetT val;
  char *save = input_line_pointer;

  input_line_pointer = scale;
  val = get_absolute_expression ();

  switch (val)
    {
    case 1:
      i.log2_scale_factor = 0;
      break;
    case 2:
      i.log2_scale_factor = 1;
      break;
    case 4:
      i.log2_scale_factor = 2;
      break;
    case 8:
      i.log2_scale_factor = 3;
      break;
    default:
      {
 char sep = *input_line_pointer;

 *input_line_pointer = '\0';
 as_bad (_("expecting scale factor of 1, 2, 4, or 8: got `%s'"),
  scale);
 *input_line_pointer = sep;
 input_line_pointer = save;
 return ((void*)0);
      }
    }
  if (i.log2_scale_factor != 0 && i.index_reg == 0)
    {
      as_warn (_("scale factor of %d without an index register"),
        1 << i.log2_scale_factor);



    }
  scale = input_line_pointer;
  input_line_pointer = save;
  return scale;
}
