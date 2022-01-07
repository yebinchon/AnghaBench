
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {scalar_t__ egid; int group_info; } ;
typedef scalar_t__ gid_t ;


 struct cred* current_cred () ;
 int groups_search (int ,scalar_t__) ;

int in_egroup_p(gid_t grp)
{
 const struct cred *cred = current_cred();
 int retval = 1;

 if (grp != cred->egid)
  retval = groups_search(cred->group_info, grp);
 return retval;
}
