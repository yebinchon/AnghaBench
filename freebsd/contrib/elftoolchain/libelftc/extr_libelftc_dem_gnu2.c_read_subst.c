
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * container; } ;
struct demangle_data {char* p; TYPE_1__ arg; TYPE_1__ vec; } ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int VEC_PUSH_STR (TYPE_1__*,int ) ;
 int assert (int) ;
 scalar_t__ errno ;
 size_t strtol (char*,char**,int) ;

__attribute__((used)) static int
read_subst(struct demangle_data *d)
{
 size_t idx;
 char *str;

 if (d == ((void*)0))
  return (-1);

 idx = strtol(d->p + 1, &str, 10);
 if (idx == 0 && (errno == EINVAL || errno == ERANGE))
  return (-1);

 assert(idx > 0);
 assert(str != ((void*)0));

 d->p = str;

 if (VEC_PUSH_STR(&d->vec, d->arg.container[idx - 1]) == 0)
  return (-1);

 if (VEC_PUSH_STR(&d->arg, d->arg.container[idx - 1]) == 0)
  return (-1);

 if (*d->p == '\0')
  return (1);

 return (0);
}
