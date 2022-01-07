
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {int * container; } ;


 char* malloc (int) ;
 int memcpy (char*,int ,size_t) ;
 size_t strlen (int ) ;

char *
vector_str_substr(const struct vector_str *v, size_t begin, size_t end,
    size_t *r_len)
{
 size_t cur, i, len;
 char *rtn;

 if (v == ((void*)0) || begin > end)
  return (((void*)0));

 len = 0;
 for (i = begin; i < end + 1; ++i)
  len += strlen(v->container[i]);

 if ((rtn = malloc(sizeof(char) * (len + 1))) == ((void*)0))
  return (((void*)0));

 if (r_len != ((void*)0))
  *r_len = len;

 cur = 0;
 for (i = begin; i < end + 1; ++i) {
  len = strlen(v->container[i]);
  memcpy(rtn + cur, v->container[i], len);
  cur += len;
 }
 rtn[cur] = '\0';

 return (rtn);
}
