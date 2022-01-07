
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int am_flags; TYPE_2__* am_al; struct TYPE_9__* am_child; struct TYPE_9__* am_ysib; struct TYPE_9__* am_osib; struct TYPE_9__* am_parent; } ;
typedef TYPE_3__ am_node ;
struct TYPE_8__ {TYPE_1__* al_mnt; } ;
struct TYPE_7__ {int mf_flags; } ;


 int AMF_AUTOFS ;
 int AMF_ROOT ;
 int MFF_IS_AUTOFS ;
 TYPE_3__* root_node ;

void
insert_am(am_node *mp, am_node *p_mp)
{




  if (p_mp == root_node)
    mp->am_flags |= AMF_ROOT;



  mp->am_parent = p_mp;
  mp->am_osib = p_mp->am_child;
  if (mp->am_osib)
    mp->am_osib->am_ysib = mp;
  p_mp->am_child = mp;




}
