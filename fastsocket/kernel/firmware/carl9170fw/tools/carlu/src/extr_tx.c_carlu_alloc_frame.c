
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int queue; } ;
struct carlu {int extra_headroom; } ;
struct _carl9170_tx_superframe {int dummy; } ;


 struct frame* frame_alloc (unsigned int) ;
 int frame_reserve (struct frame*,int) ;

struct frame *carlu_alloc_frame(struct carlu *ar, unsigned int size)
{
 struct frame *tmp;
 unsigned int total_len;

 total_len = ar->extra_headroom + sizeof(struct _carl9170_tx_superframe) + size;

 tmp = frame_alloc(total_len);
 if (!tmp)
  return ((void*)0);

 frame_reserve(tmp, sizeof(struct _carl9170_tx_superframe) + ar->extra_headroom);

 tmp->queue = 2;

 return tmp;
}
