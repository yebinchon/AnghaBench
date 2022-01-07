
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct jffs2_sb_info {scalar_t__ wbuf_pagesize; } ;
struct jffs2_raw_inode {int dummy; } ;


 int jffs2_can_mark_obsolete (struct jffs2_sb_info*) ;

__attribute__((used)) static inline int min_free(struct jffs2_sb_info *c)
{
 uint32_t min = 2 * sizeof(struct jffs2_raw_inode);




 return min;

}
