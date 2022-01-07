
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ indirect_levels; } ;
struct dx_root {TYPE_1__ info; } ;
struct dx_frame {TYPE_2__* bh; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 int brelse (TYPE_2__*) ;

__attribute__((used)) static void dx_release (struct dx_frame *frames)
{
 if (frames[0].bh == ((void*)0))
  return;

 if (((struct dx_root *) frames[0].bh->b_data)->info.indirect_levels)
  brelse(frames[1].bh);
 brelse(frames[0].bh);
}
