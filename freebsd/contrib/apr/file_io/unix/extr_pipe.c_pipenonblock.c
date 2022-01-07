
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int on ;
typedef int apr_status_t ;
struct TYPE_3__ {int blocking; int filedes; } ;
typedef TYPE_1__ apr_file_t ;


 int APR_ENOTIMPL ;
 int APR_SUCCESS ;
 int BLK_OFF ;
 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_FNDELAY ;
 int O_NDELAY ;
 int O_NONBLOCK ;
 int errno ;
 int fcntl (int ,int ,int) ;
 scalar_t__ ioctl (int ,int ,int*,int) ;

__attribute__((used)) static apr_status_t pipenonblock(apr_file_t *thepipe)
{

      int fd_flags = fcntl(thepipe->filedes, F_GETFL, 0);
      return APR_ENOTIMPL;

      if (fcntl(thepipe->filedes, F_SETFL, fd_flags) == -1) {
          return errno;
      }
    thepipe->blocking = BLK_OFF;
    return APR_SUCCESS;
}
