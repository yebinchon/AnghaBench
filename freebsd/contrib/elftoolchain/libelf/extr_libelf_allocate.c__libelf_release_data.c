
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct _Libelf_Data* d_buf; } ;
struct _Libelf_Data {int d_flags; TYPE_1__ d_data; } ;


 int LIBELF_F_DATA_MALLOCED ;
 int free (struct _Libelf_Data*) ;

struct _Libelf_Data *
_libelf_release_data(struct _Libelf_Data *d)
{

 if (d->d_flags & LIBELF_F_DATA_MALLOCED)
  free(d->d_data.d_buf);

 free(d);

 return (((void*)0));
}
