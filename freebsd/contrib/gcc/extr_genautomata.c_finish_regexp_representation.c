
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irp ;
 int obstack_blank_fast (int *,int) ;
 int obstack_object_size (int *) ;

__attribute__((used)) static void
finish_regexp_representation (void)
{
  int length = obstack_object_size (&irp);

  obstack_blank_fast (&irp, -length);
}
