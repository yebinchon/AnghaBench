
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_write_data {int dummy; } ;



__attribute__((used)) static inline
int nfs_write_need_commit(struct nfs_write_data *data)
{
 return 0;
}
