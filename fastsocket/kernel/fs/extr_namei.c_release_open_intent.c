
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* file; } ;
struct TYPE_8__ {TYPE_2__ open; } ;
struct nameidata {TYPE_3__ intent; } ;
struct TYPE_6__ {int * dentry; } ;
struct TYPE_9__ {TYPE_1__ f_path; } ;


 int fput (TYPE_4__*) ;
 int put_filp (TYPE_4__*) ;

void release_open_intent(struct nameidata *nd)
{
 if (nd->intent.open.file->f_path.dentry == ((void*)0))
  put_filp(nd->intent.open.file);
 else
  fput(nd->intent.open.file);
}
