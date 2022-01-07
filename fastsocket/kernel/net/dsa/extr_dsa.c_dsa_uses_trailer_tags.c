
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {scalar_t__ tag_protocol; } ;


 int ETH_P_TRAILER ;
 scalar_t__ htons (int ) ;

bool dsa_uses_trailer_tags(void *dsa_ptr)
{
 struct dsa_switch_tree *dst = dsa_ptr;

 return !!(dst->tag_protocol == htons(ETH_P_TRAILER));
}
