
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sound_queue {int locked; scalar_t__ user_frags; scalar_t__ max_count; scalar_t__ numBufs; scalar_t__ max_active; int block_size; int bufSize; int user_frag_size; int rear; scalar_t__ active; scalar_t__ syncing; scalar_t__ rear_size; scalar_t__ count; scalar_t__ front; } ;
struct TYPE_7__ {int (* write_sq_setup ) () ;int (* init ) () ;} ;
struct TYPE_6__ {int size; int stereo; int speed; } ;
struct TYPE_5__ {int size; int stereo; int speed; } ;
struct TYPE_8__ {TYPE_3__ mach; TYPE_2__ hard; TYPE_1__ soft; } ;


 int EINVAL ;
 TYPE_4__ dmasound ;
 int printk (char*,...) ;
 int stub1 () ;
 struct sound_queue write_sq ;

__attribute__((used)) static int sq_setup(struct sound_queue *sq)
{
 int (*setup_func)(void) = ((void*)0);
 int hard_frame ;

 if (sq->locked) {



  return -EINVAL ;
 }
 sq->locked = 1 ;





 dmasound.mach.init();
 if (sq->user_frags <= 0) {
  sq->max_count = sq->numBufs ;
  sq->max_active = sq->numBufs ;
  sq->block_size = sq->bufSize;

  sq->user_frags = sq->numBufs ;
  sq->user_frag_size = sq->bufSize ;
  sq->user_frag_size *=
   (dmasound.soft.size * (dmasound.soft.stereo+1) ) ;
  sq->user_frag_size /=
   (dmasound.hard.size * (dmasound.hard.stereo+1) ) ;
 } else {

  sq->block_size = sq->user_frag_size ;
  sq->block_size *=
   (dmasound.hard.size * (dmasound.hard.stereo+1) ) ;
  sq->block_size /=
   (dmasound.soft.size * (dmasound.soft.stereo+1) ) ;

  sq->block_size *= dmasound.hard.speed ;
  sq->block_size /= dmasound.soft.speed ;

  hard_frame =
   (dmasound.hard.size * (dmasound.hard.stereo+1))/8 ;
  sq->block_size += (hard_frame - 1) ;
  sq->block_size &= ~(hard_frame - 1) ;

  if ( sq->block_size <= 0 || sq->block_size > sq->bufSize) {



   sq->block_size = sq->bufSize ;
  }
  if ( sq->user_frags <= sq->numBufs ) {
   sq->max_count = sq->user_frags ;

   sq->max_active = (sq->max_active <= sq->max_count) ?
    sq->max_active : sq->max_count ;
  } else {



   sq->max_count =
   sq->max_active = sq->numBufs ;
  }
 }
 sq->front = sq->count = sq->rear_size = 0;
 sq->syncing = 0;
 sq->active = 0;

 if (sq == &write_sq) {
     sq->rear = -1;
     setup_func = dmasound.mach.write_sq_setup;
 }
 if (setup_func)
     return setup_func();
 return 0 ;
}
