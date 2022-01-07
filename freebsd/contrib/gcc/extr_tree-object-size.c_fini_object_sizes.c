
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITMAP_FREE (int ) ;
 int * computed ;
 int free (int *) ;
 int ** object_sizes ;

void
fini_object_sizes (void)
{
  int object_size_type;

  for (object_size_type = 0; object_size_type <= 3; object_size_type++)
    {
      free (object_sizes[object_size_type]);
      BITMAP_FREE (computed[object_size_type]);
      object_sizes[object_size_type] = ((void*)0);
    }
}
