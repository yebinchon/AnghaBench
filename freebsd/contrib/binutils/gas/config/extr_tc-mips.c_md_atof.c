
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LITTLENUM_TYPE ;


 char* _ (char*) ;
 char* atof_ieee (char*,int,int *) ;
 char* input_line_pointer ;
 int md_number_to_chars (char*,int ,int) ;
 int target_big_endian ;

char *
md_atof (int type, char *litP, int *sizeP)
{
  int prec;
  LITTLENUM_TYPE words[4];
  char *t;
  int i;

  switch (type)
    {
    case 'f':
      prec = 2;
      break;

    case 'd':
      prec = 4;
      break;

    default:
      *sizeP = 0;
      return _("bad call to md_atof");
    }

  t = atof_ieee (input_line_pointer, type, words);
  if (t)
    input_line_pointer = t;

  *sizeP = prec * 2;

  if (! target_big_endian)
    {
      for (i = prec - 1; i >= 0; i--)
 {
   md_number_to_chars (litP, words[i], 2);
   litP += 2;
 }
    }
  else
    {
      for (i = 0; i < prec; i++)
 {
   md_number_to_chars (litP, words[i], 2);
   litP += 2;
 }
    }

  return ((void*)0);
}
