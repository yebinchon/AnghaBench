
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_blkreserv {int rs_node; } ;


 int RB_EMPTY_NODE (int *) ;

__attribute__((used)) static inline bool gfs2_rs_active(struct gfs2_blkreserv *rs)
{
 return rs && !RB_EMPTY_NODE(&rs->rs_node);
}
