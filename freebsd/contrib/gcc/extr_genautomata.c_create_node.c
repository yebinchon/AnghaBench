
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irp ;
 int memset (void*,int ,size_t) ;
 void* obstack_base (int *) ;
 int obstack_blank (int *,size_t) ;
 int obstack_finish (int *) ;

__attribute__((used)) static void *
create_node (size_t size)
{
  void *result;

  obstack_blank (&irp, size);
  result = obstack_base (&irp);
  (void) obstack_finish (&irp);

  memset (result, 0, size);
  return result;
}
