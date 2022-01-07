
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_time; } ;


 int jiffies ;

__attribute__((used)) static inline void
ncp_new_dentry(struct dentry* dentry)
{
 dentry->d_time = jiffies;
}
