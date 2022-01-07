
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlfw_file {int * data; int * name; scalar_t__ len; } ;


 int free (int *) ;

__attribute__((used)) static void __carlfw_release(struct carlfw_file *f)
{
 f->len = 0;
 if (f->name)
  free(f->name);
 f->name = ((void*)0);

 if (f->data)
  free(f->data);
 f->data = ((void*)0);
}
