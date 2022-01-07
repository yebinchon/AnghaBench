
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ocfs2_dinode {void* i_links_count_hi; void* i_links_count; } ;


 int OCFS2_LINKS_HI_SHIFT ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static inline void ocfs2_set_links_count(struct ocfs2_dinode *di, u32 nlink)
{
 u16 lo, hi;

 lo = nlink;
 hi = nlink >> OCFS2_LINKS_HI_SHIFT;

 di->i_links_count = cpu_to_le16(lo);
 di->i_links_count_hi = cpu_to_le16(hi);
}
