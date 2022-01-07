
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sound_queue {int bufSize; int numBufs; int user_frags; int max_active; int user_frag_size; scalar_t__ locked; } ;


 int EINVAL ;
 int MAX_FRAG_SIZE ;
 int MIN_FRAG_SIZE ;
 int printk (char*) ;

__attribute__((used)) static int set_queue_frags(struct sound_queue *sq, int bufs, int size)
{
 if (sq->locked) {



  return -EINVAL ;
 }

 if ((size < MIN_FRAG_SIZE) || (size > MAX_FRAG_SIZE))
  return -EINVAL ;
 size = (1<<size) ;
 if (size > sq->bufSize)
  return -EINVAL ;

 if (bufs <= 0)
  return -EINVAL ;
 if (bufs > sq->numBufs)
  bufs = sq->numBufs ;






 sq->user_frags =
 sq->max_active = bufs ;
 sq->user_frag_size = size ;

 return 0 ;
}
