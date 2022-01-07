
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LITTLENUM_TYPE ;


 int MAXIMUM_NUMBER_OF_LITTLENUMS ;
 char* _ (char*) ;
 int atof_vax (int ,char,int *) ;
 unsigned int atof_vax_sizeof (char) ;
 int input_line_pointer ;
 int know (int) ;
 int md_number_to_chars (char*,int ,int) ;

char *
md_atof (int what_statement_type,
  char *literalP,
  int *sizeP)
{
  LITTLENUM_TYPE words[MAXIMUM_NUMBER_OF_LITTLENUMS];
  char kind_of_float;
  unsigned int number_of_chars;
  LITTLENUM_TYPE *littlenumP;

  switch (what_statement_type)
    {
    case 'F':
    case 'f':
      kind_of_float = 'f';
      break;

    case 'D':
    case 'd':
      kind_of_float = 'd';
      break;

    case 'g':
      kind_of_float = 'g';
      break;

    case 'h':
      kind_of_float = 'h';
      break;

    default:
      kind_of_float = 0;
      break;
    };

  if (kind_of_float)
    {
      LITTLENUM_TYPE *limit;

      input_line_pointer = atof_vax (input_line_pointer,
         kind_of_float,
         words);




      number_of_chars = atof_vax_sizeof (kind_of_float);
      know (number_of_chars <= MAXIMUM_NUMBER_OF_LITTLENUMS * sizeof (LITTLENUM_TYPE));
      limit = words + (number_of_chars / sizeof (LITTLENUM_TYPE));
      for (littlenumP = words; littlenumP < limit; littlenumP++)
 {
   md_number_to_chars (literalP, *littlenumP, sizeof (LITTLENUM_TYPE));
   literalP += sizeof (LITTLENUM_TYPE);
 };
    }
  else
    number_of_chars = 0;

  *sizeP = number_of_chars;
  return kind_of_float ? ((void*)0) : _("Bad call to md_atof()");
}
