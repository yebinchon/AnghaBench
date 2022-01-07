
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode {int dummy; } ;



__attribute__((used)) static void cap_inode_getsecid(const struct inode *inode, u32 *secid)
{
 *secid = 0;
}
