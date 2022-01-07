
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct cftype* d_fsdata; } ;
struct cftype {int dummy; } ;



__attribute__((used)) static inline struct cftype *__d_cft(struct dentry *dentry)
{
 return dentry->d_fsdata;
}
