
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_data {char* p; int class_name; int vec; } ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int assert (int) ;
 scalar_t__ errno ;
 size_t strtol (char*,char**,int) ;
 int vector_str_push (int *,char*,size_t) ;

__attribute__((used)) static bool
read_class(struct demangle_data *d)
{
 size_t len;
 char *str;

 if (d == ((void*)0))
  return (0);

 len = strtol(d->p, &str, 10);
 if (len == 0 && (errno == EINVAL || errno == ERANGE))
  return (0);

 assert(len > 0);
 assert(str != ((void*)0));

 if (vector_str_push(&d->vec, str, len) == 0)
  return (0);

 d->p = str + len;

 d->class_name = 1;

 return (1);
}
