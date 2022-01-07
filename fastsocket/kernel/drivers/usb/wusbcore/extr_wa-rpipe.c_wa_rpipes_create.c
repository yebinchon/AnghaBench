
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wahc {int * rpipe_bm; int rpipes; TYPE_1__* wa_descr; } ;
struct TYPE_2__ {int wNumRPipes; } ;


 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kzalloc (int,int ) ;

int wa_rpipes_create(struct wahc *wa)
{
 wa->rpipes = wa->wa_descr->wNumRPipes;
 wa->rpipe_bm = kzalloc(BITS_TO_LONGS(wa->rpipes)*sizeof(unsigned long),
          GFP_KERNEL);
 if (wa->rpipe_bm == ((void*)0))
  return -ENOMEM;
 return 0;
}
