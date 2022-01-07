
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
atof_vax_sizeof (int letter)
{
  int return_value;




  switch (letter)
    {
    case 'f':
    case 'F':
      return_value = 4;
      break;

    case 'd':
    case 'D':
    case 'g':
    case 'G':
      return_value = 8;
      break;

    case 'h':
    case 'H':
      return_value = 16;
      break;

    default:
      return_value = 0;
      break;
    }

  return return_value;
}
