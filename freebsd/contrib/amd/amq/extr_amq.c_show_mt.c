
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum show_opt { ____Placeholder_show_opt } show_opt ;
struct TYPE_4__ {struct TYPE_4__* mt_child; struct TYPE_4__* mt_next; } ;
typedef TYPE_1__ amq_mount_tree ;


 int show_mti (TYPE_1__*,int,int*,int*,int*) ;

__attribute__((used)) static void
show_mt(amq_mount_tree *mt, enum show_opt e, int *mwid, int *dwid, int *pwid)
{
  while (mt) {
    show_mti(mt, e, mwid, dwid, pwid);
    show_mt(mt->mt_next, e, mwid, dwid, pwid);
    mt = mt->mt_child;
  }
}
