
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef scalar_t__ LITTLENUM_TYPE ;


 int MAX_LITTLENUMS ;
 char* _ (char*) ;
 char* atof_ieee (char*,int,scalar_t__*) ;
 char* input_line_pointer ;
 int md_number_to_chars (char*,int ,int) ;

char *
md_atof (int type, char *litP, int *sizeP)
{
  int i;
  int prec;
  LITTLENUM_TYPE words [MAX_LITTLENUMS];
  char * t;

  switch (type)
    {
    case 'f':
    case 'F':
    case 's':
    case 'S':
      prec = 2;
      break;

    case 'd':
    case 'D':
    case 'r':
    case 'R':
      prec = 4;
      break;


    default:
      *sizeP = 0;
      return _("Bad call to md_atof()");
    }

  t = atof_ieee (input_line_pointer, type, words);
  if (t)
    input_line_pointer = t;
  * sizeP = prec * sizeof (LITTLENUM_TYPE);

  for (i = 0; i < prec; i++)
    {
      md_number_to_chars (litP, (valueT) words[i],
     sizeof (LITTLENUM_TYPE));
      litP += sizeof (LITTLENUM_TYPE);
    }

  return 0;
}
