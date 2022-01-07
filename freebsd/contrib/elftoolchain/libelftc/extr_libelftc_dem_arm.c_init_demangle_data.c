
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; int * buf; } ;
struct demangle_data {int ptr; int ref; int cnst; int array; int vec; int arg; int type; TYPE_1__ array_str; } ;


 int ENCODE_FUNC ;
 int vector_str_dest (int *) ;
 int vector_str_init (int *) ;

__attribute__((used)) static bool
init_demangle_data(struct demangle_data *d)
{

 if (d == ((void*)0))
  return (0);

 d->ptr = 0;
 d->ref = 0;
 d->cnst = 0;
 d->array = 0;

 d->array_str.buf = ((void*)0);
 d->array_str.size = 0;

 d->type = ENCODE_FUNC;

 if (vector_str_init(&d->vec) == 0)
  return (0);

 if (vector_str_init(&d->arg) == 0) {
  vector_str_dest(&d->vec);

  return (0);
 }

 return (1);
}
