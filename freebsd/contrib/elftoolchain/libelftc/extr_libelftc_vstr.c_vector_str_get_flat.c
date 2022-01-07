
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; int * container; } ;
typedef int ssize_t ;


 int get_strlen_sum (struct vector_str const*) ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 int strlen (int ) ;

char *
vector_str_get_flat(const struct vector_str *v, size_t *l)
{
 ssize_t elem_pos, elem_size, rtn_size;
 size_t i;
 char *rtn;

 if (v == ((void*)0) || v->size == 0)
  return (((void*)0));

 if ((rtn_size = get_strlen_sum(v)) == 0)
  return (((void*)0));

 if ((rtn = malloc(sizeof(char) * (rtn_size + 1))) == ((void*)0))
  return (((void*)0));

 elem_pos = 0;
 for (i = 0; i < v->size; ++i) {
  elem_size = strlen(v->container[i]);

  memcpy(rtn + elem_pos, v->container[i], elem_size);

  elem_pos += elem_size;
 }

 rtn[rtn_size] = '\0';

 if (l != ((void*)0))
  *l = rtn_size;

 return (rtn);
}
