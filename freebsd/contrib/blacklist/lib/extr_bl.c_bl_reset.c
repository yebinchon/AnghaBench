
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* bl_t ;
struct TYPE_5__ {int b_fd; int b_connected; } ;


 int BL_LOCK (TYPE_1__*) ;
 int BL_UNLOCK (TYPE_1__*) ;
 int close (int) ;
 int errno ;

__attribute__((used)) static void
bl_reset(bl_t b, bool locked)
{
 int serrno = errno;
 if (!locked)
  BL_LOCK(b);
 close(b->b_fd);
 errno = serrno;
 b->b_fd = -1;
 b->b_connected = -1;
 if (!locked)
  BL_UNLOCK(b);
}
