
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dentry; } ;
struct svc_export {TYPE_3__ ex_path; } ;
struct TYPE_5__ {TYPE_1__* d_sb; } ;
struct TYPE_4__ {TYPE_2__* s_root; } ;



__attribute__((used)) static bool is_root_export(struct svc_export *exp)
{
 return exp->ex_path.dentry == exp->ex_path.dentry->d_sb->s_root;
}
