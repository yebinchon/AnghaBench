
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int cache_pipefs_files ;
 int rpc_populate (struct dentry*,int ,int ,int,void*) ;

__attribute__((used)) static int rpc_cachedir_populate(struct dentry *dentry, void *private)
{
 return rpc_populate(dentry,
       cache_pipefs_files, 0, 3,
       private);
}
