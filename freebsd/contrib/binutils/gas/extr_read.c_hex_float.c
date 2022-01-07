
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int as_bad (int ,int) ;
 int as_warn (int ) ;
 scalar_t__ hex_p (char) ;
 int hex_value (char) ;
 char* input_line_pointer ;
 int memset (char*,int ,int) ;
 scalar_t__ target_big_endian ;

__attribute__((used)) static int
hex_float (int float_type, char *bytes)
{
  int length;
  int i;

  switch (float_type)
    {
    case 'f':
    case 'F':
    case 's':
    case 'S':
      length = 4;
      break;

    case 'd':
    case 'D':
    case 'r':
    case 'R':
      length = 8;
      break;

    case 'x':
    case 'X':
      length = 12;
      break;

    case 'p':
    case 'P':
      length = 12;
      break;

    default:
      as_bad (_("unknown floating type type '%c'"), float_type);
      return -1;
    }




  i = 0;
  while (hex_p (*input_line_pointer) || *input_line_pointer == '_')
    {
      int d;



      if (*input_line_pointer == '_')
 {
   ++input_line_pointer;
   continue;
 }

      if (i >= length)
 {
   as_warn (_("floating point constant too large"));
   return -1;
 }
      d = hex_value (*input_line_pointer) << 4;
      ++input_line_pointer;
      while (*input_line_pointer == '_')
 ++input_line_pointer;
      if (hex_p (*input_line_pointer))
 {
   d += hex_value (*input_line_pointer);
   ++input_line_pointer;
 }
      if (target_big_endian)
 bytes[i] = d;
      else
 bytes[length - i - 1] = d;
      ++i;
    }

  if (i < length)
    {
      if (target_big_endian)
 memset (bytes + i, 0, length - i);
      else
 memset (bytes, 0, length - i);
    }

  return length;
}
