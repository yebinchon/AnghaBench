
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int LONGEST ;


 int GROW_VECT (char*,size_t,int) ;
 int VALUE_TYPE (struct value*) ;
 struct value* ada_search_struct_field (char*,struct value*,int ,int ) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int value_as_long (struct value*) ;

__attribute__((used)) static int
scan_discrim_bound (char *str, int k, struct value *dval, LONGEST * px,
      int *pnew_k)
{
  static char *bound_buffer = ((void*)0);
  static size_t bound_buffer_len = 0;
  char *bound;
  char *pend;
  struct value *bound_val;

  if (dval == ((void*)0) || str == ((void*)0) || str[k] == '\0')
    return 0;

  pend = strstr (str + k, "__");
  if (pend == ((void*)0))
    {
      bound = str + k;
      k += strlen (bound);
    }
  else
    {
      GROW_VECT (bound_buffer, bound_buffer_len, pend - (str + k) + 1);
      bound = bound_buffer;
      strncpy (bound_buffer, str + k, pend - (str + k));
      bound[pend - (str + k)] = '\0';
      k = pend - str;
    }

  bound_val = ada_search_struct_field (bound, dval, 0, VALUE_TYPE (dval));
  if (bound_val == ((void*)0))
    return 0;

  *px = value_as_long (bound_val);
  if (pnew_k != ((void*)0))
    *pnew_k = k;
  return 1;
}
