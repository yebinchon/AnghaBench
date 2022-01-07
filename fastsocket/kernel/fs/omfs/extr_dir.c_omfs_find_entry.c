
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct buffer_head {int * b_data; } ;
typedef int __be64 ;


 int EIO ;
 struct buffer_head* ERR_PTR (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* omfs_get_bucket (struct inode*,char const*,int,int*) ;
 struct buffer_head* omfs_scan_list (struct inode*,int ,char const*,int,int *) ;

__attribute__((used)) static struct buffer_head *omfs_find_entry(struct inode *dir,
        const char *name, int namelen)
{
 struct buffer_head *bh;
 int ofs;
 u64 block, dummy;

 bh = omfs_get_bucket(dir, name, namelen, &ofs);
 if (!bh)
  return ERR_PTR(-EIO);

 block = be64_to_cpu(*((__be64 *) &bh->b_data[ofs]));
 brelse(bh);

 return omfs_scan_list(dir, block, name, namelen, &dummy);
}
