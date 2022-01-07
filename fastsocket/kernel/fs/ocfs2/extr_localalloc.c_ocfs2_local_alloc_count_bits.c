
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ocfs2_local_alloc {int la_size; int * la_bitmap; } ;
struct ocfs2_dinode {int dummy; } ;


 struct ocfs2_local_alloc* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 scalar_t__ hweight8 (int ) ;
 int le16_to_cpu (int ) ;
 int mlog_entry_void () ;
 int mlog_exit (int ) ;

__attribute__((used)) static u32 ocfs2_local_alloc_count_bits(struct ocfs2_dinode *alloc)
{
 int i;
 u8 *buffer;
 u32 count = 0;
 struct ocfs2_local_alloc *la = OCFS2_LOCAL_ALLOC(alloc);

 mlog_entry_void();

 buffer = la->la_bitmap;
 for (i = 0; i < le16_to_cpu(la->la_size); i++)
  count += hweight8(buffer[i]);

 mlog_exit(count);
 return count;
}
