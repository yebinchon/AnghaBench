
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_caching_info {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct ocfs2_caching_info ip_metadata_cache; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;

__attribute__((used)) static inline struct ocfs2_caching_info *INODE_CACHE(struct inode *inode)
{
 return &OCFS2_I(inode)->ip_metadata_cache;
}
