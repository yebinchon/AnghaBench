
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; scalar_t__ name; } ;
struct dentry {TYPE_1__ d_name; scalar_t__ d_iname; } ;


 scalar_t__ dname_external (struct dentry*) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int swap (scalar_t__,scalar_t__) ;

__attribute__((used)) static void switch_names(struct dentry *dentry, struct dentry *target)
{
 if (dname_external(target)) {
  if (dname_external(dentry)) {



   swap(target->d_name.name, dentry->d_name.name);
  } else {




   memcpy(target->d_iname, dentry->d_name.name,
     dentry->d_name.len + 1);
   dentry->d_name.name = target->d_name.name;
   target->d_name.name = target->d_iname;
  }
 } else {
  if (dname_external(dentry)) {




   memcpy(dentry->d_iname, target->d_name.name,
     target->d_name.len + 1);
   target->d_name.name = dentry->d_name.name;
   dentry->d_name.name = dentry->d_iname;
  } else {



   memcpy(dentry->d_iname, target->d_name.name,
     target->d_name.len + 1);
   dentry->d_name.len = target->d_name.len;
   return;
  }
 }
 swap(dentry->d_name.len, target->d_name.len);
}
