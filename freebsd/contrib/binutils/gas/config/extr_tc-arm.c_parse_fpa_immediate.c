
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef TYPE_1__ expressionS ;
struct TYPE_5__ {int error; } ;
typedef scalar_t__ LITTLENUM_TYPE ;


 int FAIL ;
 int MAX_LITTLENUMS ;
 int NUM_FLOAT_VALS ;
 scalar_t__ O_big ;
 int _ (char*) ;
 scalar_t__ absolute_section ;
 char* atof_ieee (char*,char,scalar_t__*) ;
 scalar_t__ expression (TYPE_1__*) ;
 scalar_t__* fp_const ;
 scalar_t__** fp_values ;
 scalar_t__ gen_to_words (scalar_t__*,int,long) ;
 char* input_line_pointer ;
 TYPE_2__ inst ;
 scalar_t__* is_end_of_line ;
 int memset (scalar_t__*,int ,int) ;
 int strlen (scalar_t__) ;
 scalar_t__ strncmp (char*,scalar_t__,int ) ;

__attribute__((used)) static int
parse_fpa_immediate (char ** str)
{
  LITTLENUM_TYPE words[MAX_LITTLENUMS];
  char * save_in;
  expressionS exp;
  int i;
  int j;




  for (i = 0; fp_const[i]; i++)
    {
      if (strncmp (*str, fp_const[i], strlen (fp_const[i])) == 0)
 {
   char *start = *str;

   *str += strlen (fp_const[i]);
   if (is_end_of_line[(unsigned char) **str])
     return i + 8;
   *str = start;
 }
    }






  memset (words, 0, MAX_LITTLENUMS * sizeof (LITTLENUM_TYPE));


  if ((save_in = atof_ieee (*str, 'x', words)) != ((void*)0)
      && is_end_of_line[(unsigned char) *save_in])
    {
      for (i = 0; i < NUM_FLOAT_VALS; i++)
 {
   for (j = 0; j < MAX_LITTLENUMS; j++)
     {
       if (words[j] != fp_values[i][j])
  break;
     }

   if (j == MAX_LITTLENUMS)
     {
       *str = save_in;
       return i + 8;
     }
 }
    }



  save_in = input_line_pointer;
  input_line_pointer = *str;
  if (expression (&exp) == absolute_section
      && exp.X_op == O_big
      && exp.X_add_number < 0)
    {


      if (gen_to_words (words, 5, (long) 15) == 0)
 {
   for (i = 0; i < NUM_FLOAT_VALS; i++)
     {
       for (j = 0; j < MAX_LITTLENUMS; j++)
  {
    if (words[j] != fp_values[i][j])
      break;
  }

       if (j == MAX_LITTLENUMS)
  {
    *str = input_line_pointer;
    input_line_pointer = save_in;
    return i + 8;
  }
     }
 }
    }

  *str = input_line_pointer;
  input_line_pointer = save_in;
  inst.error = _("invalid FPA immediate expression");
  return FAIL;
}
