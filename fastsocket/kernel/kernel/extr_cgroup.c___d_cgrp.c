
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct cgroup* d_fsdata; } ;
struct cgroup {int dummy; } ;



__attribute__((used)) static inline struct cgroup *__d_cgrp(struct dentry *dentry)
{
 return dentry->d_fsdata;
}
