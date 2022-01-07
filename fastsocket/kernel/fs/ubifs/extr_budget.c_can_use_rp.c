
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ rp_uid; scalar_t__ rp_gid; } ;


 int CAP_SYS_RESOURCE ;
 scalar_t__ capable (int ) ;
 scalar_t__ current_fsuid () ;
 scalar_t__ in_group_p (scalar_t__) ;

__attribute__((used)) static int can_use_rp(struct ubifs_info *c)
{
 if (current_fsuid() == c->rp_uid || capable(CAP_SYS_RESOURCE) ||
     (c->rp_gid != 0 && in_group_p(c->rp_gid)))
  return 1;
 return 0;
}
