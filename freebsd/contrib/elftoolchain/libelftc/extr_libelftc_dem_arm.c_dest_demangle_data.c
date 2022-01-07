
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_data {int array_str; int vec; int arg; } ;


 int dest_cstring (int *) ;
 int vector_str_dest (int *) ;

__attribute__((used)) static void
dest_demangle_data(struct demangle_data *d)
{

 if (d != ((void*)0)) {
  vector_str_dest(&d->arg);
  vector_str_dest(&d->vec);

  dest_cstring(&d->array_str);
 }
}
