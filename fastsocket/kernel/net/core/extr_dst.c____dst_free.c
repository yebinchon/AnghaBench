
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_entry {int obsolete; int output; int input; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;
 int dst_discard ;

__attribute__((used)) static void ___dst_free(struct dst_entry * dst)
{



 if (dst->dev == ((void*)0) || !(dst->dev->flags&IFF_UP)) {
  dst->input = dst->output = dst_discard;
 }
 dst->obsolete = 2;
}
