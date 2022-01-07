
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_dinode {int dummy; } ;


 int ocfs2_read_links_count (struct ocfs2_dinode*) ;
 int ocfs2_set_links_count (struct ocfs2_dinode*,int) ;

__attribute__((used)) static inline void ocfs2_add_links_count(struct ocfs2_dinode *di, int n)
{
 u32 links = ocfs2_read_links_count(di);

 links += n;

 ocfs2_set_links_count(di, links);
}
