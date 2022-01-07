
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neon_type {scalar_t__ elems; TYPE_1__* el; } ;
typedef enum neon_el_type { ____Placeholder_neon_el_type } neon_el_type ;
struct TYPE_2__ {int type; unsigned int size; } ;


 int FAIL ;
 scalar_t__ ISDIGIT (char) ;
 scalar_t__ NEON_MAX_TYPE_ELS ;
 int NT_float ;
 int NT_integer ;
 int NT_poly ;
 int NT_signed ;
 int NT_unsigned ;
 int NT_untyped ;
 int SUCCESS ;
 int TOLOWER (char) ;
 int _ (char*) ;
 int as_bad (int ,unsigned int) ;
 unsigned int strtoul (char*,char**,int) ;

__attribute__((used)) static int
parse_neon_type (struct neon_type *type, char **str)
{
  char *ptr = *str;

  if (type)
    type->elems = 0;

  while (type->elems < NEON_MAX_TYPE_ELS)
    {
      enum neon_el_type thistype = NT_untyped;
      unsigned thissize = -1u;

      if (*ptr != '.')
 break;

      ptr++;


      if (ISDIGIT (*ptr))
 goto parsesize;

      switch (TOLOWER (*ptr))
 {
 case 'i': thistype = NT_integer; break;
 case 'f': thistype = NT_float; break;
 case 'p': thistype = NT_poly; break;
 case 's': thistype = NT_signed; break;
 case 'u': thistype = NT_unsigned; break;
        case 'd':
          thistype = NT_float;
          thissize = 64;
          ptr++;
          goto done;
 default:
   as_bad (_("unexpected character `%c' in type specifier"), *ptr);
   return FAIL;
 }

      ptr++;


      if (thistype == NT_float && !ISDIGIT (*ptr))
 thissize = 32;
      else
 {
 parsesize:
   thissize = strtoul (ptr, &ptr, 10);

   if (thissize != 8 && thissize != 16 && thissize != 32
              && thissize != 64)
            {
              as_bad (_("bad size %d in type specifier"), thissize);
       return FAIL;
     }
 }

      done:
      if (type)
        {
          type->el[type->elems].type = thistype;
   type->el[type->elems].size = thissize;
   type->elems++;
 }
    }


  if (type->elems == 0)
    return FAIL;

  *str = ptr;

  return SUCCESS;
}
