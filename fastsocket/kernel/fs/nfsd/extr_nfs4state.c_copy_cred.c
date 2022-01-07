
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cred {int cr_group_info; int cr_gid; int cr_uid; } ;


 int get_group_info (int ) ;

__attribute__((used)) static void copy_cred(struct svc_cred *target, struct svc_cred *source)
{
 target->cr_uid = source->cr_uid;
 target->cr_gid = source->cr_gid;
 target->cr_group_info = source->cr_group_info;
 get_group_info(target->cr_group_info);
}
