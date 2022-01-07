
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dentry; } ;
struct autofs_info {TYPE_1__* sbi; } ;
struct TYPE_2__ {unsigned int type; } ;


 struct autofs_info* autofs4_dentry_ino (int ) ;

__attribute__((used)) static int test_by_type(struct path *path, void *p)
{
 struct autofs_info *ino = autofs4_dentry_ino(path->dentry);
 return ino && ino->sbi->type & *(unsigned *)p;
}
