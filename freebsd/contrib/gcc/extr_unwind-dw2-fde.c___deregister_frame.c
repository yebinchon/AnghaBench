
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uword ;


 int __deregister_frame_info (void*) ;
 int free (int ) ;

void
__deregister_frame (void *begin)
{

  if (*(uword *) begin != 0)
    free (__deregister_frame_info (begin));
}
