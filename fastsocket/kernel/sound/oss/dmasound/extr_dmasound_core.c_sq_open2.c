
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sound_queue {int busy; int non_blocking; int open_queue; } ;
struct file {int f_mode; int f_flags; } ;
typedef int fmode_t ;


 int EBUSY ;
 int EINTR ;
 int O_NONBLOCK ;
 int SLEEP (int ) ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int sq_allocate_buffers (struct sound_queue*,int,int) ;
 int sq_wake_up (struct sound_queue*,struct file*,int) ;

__attribute__((used)) static int sq_open2(struct sound_queue *sq, struct file *file, fmode_t mode,
      int numbufs, int bufsize)
{
 int rc = 0;

 if (file->f_mode & mode) {
  if (sq->busy) {
   return -EBUSY ;

  }
  sq->busy = 1;






  if (( rc = sq_allocate_buffers(sq, numbufs, bufsize))) {



   sq->busy = 0 ;

   return rc;
  }

  sq->non_blocking = file->f_flags & O_NONBLOCK;
 }
 return rc;
}
