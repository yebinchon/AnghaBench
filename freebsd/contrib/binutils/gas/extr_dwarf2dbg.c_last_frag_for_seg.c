
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct frag {int dummy; } ;
typedef int segT ;
struct TYPE_3__ {struct frag* frch_last; struct TYPE_3__* frch_next; } ;
typedef TYPE_1__ frchainS ;
struct TYPE_4__ {TYPE_1__* frchainP; } ;


 TYPE_2__* seg_info (int ) ;

__attribute__((used)) static struct frag *
last_frag_for_seg (segT seg)
{
  frchainS *f = seg_info (seg)->frchainP;

  while (f->frch_next != ((void*)0))
    f = f->frch_next;

  return f->frch_last;
}
