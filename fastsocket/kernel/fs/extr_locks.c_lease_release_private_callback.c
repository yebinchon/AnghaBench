
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_lock {TYPE_2__* fl_file; } ;
struct TYPE_3__ {scalar_t__ signum; } ;
struct TYPE_4__ {TYPE_1__ f_owner; } ;


 int f_delown (TYPE_2__*) ;

__attribute__((used)) static void lease_release_private_callback(struct file_lock *fl)
{
 if (!fl->fl_file)
  return;

 f_delown(fl->fl_file);
 fl->fl_file->f_owner.signum = 0;
}
