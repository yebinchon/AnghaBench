
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LENGTH_OF_OPERATOR ;
 int demangled_name_complaint (char const*) ;
 int isspace (char const) ;
 unsigned int strlen (char const*) ;
 int strncmp (char const*,char*,unsigned int) ;

__attribute__((used)) static unsigned int
cp_find_first_component_aux (const char *name, int permissive)
{
  unsigned int index = 0;






  int operator_possible = 1;

  for (;; ++index)
    {
      switch (name[index])
 {
 case '<':




   index += 1;
   for (index += cp_find_first_component_aux (name + index, 1);
        name[index] != '>';
        index += cp_find_first_component_aux (name + index, 1))
     {
       if (name[index] != ':')
  {
    demangled_name_complaint (name);
    return strlen (name);
  }
       index += 2;
     }
   operator_possible = 1;
   break;
 case '(':

   index += 1;
   for (index += cp_find_first_component_aux (name + index, 1);
        name[index] != ')';
        index += cp_find_first_component_aux (name + index, 1))
     {
       if (name[index] != ':')
  {
    demangled_name_complaint (name);
    return strlen (name);
  }
       index += 2;
     }
   operator_possible = 1;
   break;
 case '>':
 case ')':
   if (permissive)
     return index;
   else
     {
       demangled_name_complaint (name);
       return strlen (name);
     }
 case '\0':
 case ':':
   return index;
 case 'o':

   if (operator_possible
       && strncmp (name + index, "operator", LENGTH_OF_OPERATOR) == 0)
     {
       index += LENGTH_OF_OPERATOR;
       while (isspace(name[index]))
  ++index;
       switch (name[index])
  {



  case '<':
    if (name[index + 1] == '<')
      index += 1;
    else
      index += 0;
    break;
  case '>':
  case '-':
    if (name[index + 1] == '>')
      index += 1;
    else
      index += 0;
    break;
  case '(':
    index += 1;
    break;
  default:
    index += 0;
    break;
  }
     }
   operator_possible = 0;
   break;
 case ' ':
 case ',':
 case '.':
 case '&':
 case '*':





   operator_possible = 1;
   break;
 default:
   operator_possible = 0;
   break;
 }
    }
}
