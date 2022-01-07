
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uword ;
struct object {int dummy; } ;


 int __register_frame_info (void*,struct object*) ;
 struct object* malloc (int) ;

void
__register_frame (void *begin)
{
  struct object *ob;


  if (*(uword *) begin == 0)
    return;

  ob = malloc (sizeof (struct object));
  __register_frame_info (begin, ob);
}
