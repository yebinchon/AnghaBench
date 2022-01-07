
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {scalar_t__ local_alloc_state; } ;


 scalar_t__ OCFS2_LA_ENABLED ;
 scalar_t__ OCFS2_LA_THROTTLED ;

__attribute__((used)) static inline int ocfs2_la_state_enabled(struct ocfs2_super *osb)
{
 return (osb->local_alloc_state == OCFS2_LA_THROTTLED ||
  osb->local_alloc_state == OCFS2_LA_ENABLED);
}
