
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; int d_time; } ;


 int IS_ROOT (struct dentry*) ;
 int jiffies ;

__attribute__((used)) static void
renew_parental_timestamps(struct dentry *direntry)
{


 do {
  direntry->d_time = jiffies;
  direntry = direntry->d_parent;
 } while (!IS_ROOT(direntry));
}
