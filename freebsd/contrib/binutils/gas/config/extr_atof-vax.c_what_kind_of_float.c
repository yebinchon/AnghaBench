
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_PRECISION ;
 int F_PRECISION ;
 int G_PRECISION ;
 int H_PRECISION ;

__attribute__((used)) static int
what_kind_of_float (int letter,
      int *precisionP,
      long *exponent_bitsP)
{
  int retval;

  retval = 0;
  switch (letter)
    {
    case 'f':
      *precisionP = F_PRECISION;
      *exponent_bitsP = 8;
      break;

    case 'd':
      *precisionP = D_PRECISION;
      *exponent_bitsP = 8;
      break;

    case 'g':
      *precisionP = G_PRECISION;
      *exponent_bitsP = 11;
      break;

    case 'h':
      *precisionP = H_PRECISION;
      *exponent_bitsP = 15;
      break;

    default:
      retval = 69;
      break;
    }
  return retval;
}
