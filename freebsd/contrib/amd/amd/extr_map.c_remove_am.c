
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* am_ysib; struct TYPE_7__* am_osib; TYPE_2__* am_parent; int am_path; scalar_t__ am_child; } ;
typedef TYPE_3__ am_node ;
struct TYPE_6__ {TYPE_3__* am_child; } ;
struct TYPE_5__ {TYPE_3__* am_osib; } ;


 int XLOG_WARNING ;
 int plog (int ,char*,int ) ;

__attribute__((used)) static void
remove_am(am_node *mp)
{



  if (mp->am_child && mp->am_parent) {
    plog(XLOG_WARNING, "children of \"%s\" still exist - deleting anyway", mp->am_path);
  }




  if (mp->am_parent && mp->am_parent->am_child == mp)
    mp->am_parent->am_child = mp->am_osib;




  if (mp->am_ysib)
    mp->am_ysib->am_osib = mp->am_osib;
  if (mp->am_osib)
    mp->am_osib->am_ysib = mp->am_ysib;
}
