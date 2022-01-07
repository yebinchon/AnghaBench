
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_flags; struct neighbour* rt6i_nexthop; } ;
struct neighbour {int nud_state; int lock; } ;
typedef enum rt6_nud_state { ____Placeholder_rt6_nud_state } rt6_nud_state ;


 int NUD_FAILED ;
 int NUD_VALID ;
 int RT6_NUD_FAIL_HARD ;
 int RT6_NUD_FAIL_PROBE ;
 int RT6_NUD_SUCCEED ;
 int RTF_GATEWAY ;
 int RTF_NONEXTHOP ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static inline enum rt6_nud_state rt6_check_neigh(struct rt6_info *rt)
{
 struct neighbour *neigh = rt->rt6i_nexthop;
 enum rt6_nud_state ret = RT6_NUD_FAIL_HARD;

 if (rt->rt6i_flags & RTF_NONEXTHOP ||
     !(rt->rt6i_flags & RTF_GATEWAY))
  ret = RT6_NUD_SUCCEED;
 else if (neigh) {
  read_lock_bh(&neigh->lock);
  if (neigh->nud_state & NUD_VALID)
   ret = RT6_NUD_SUCCEED;






  read_unlock_bh(&neigh->lock);
 }
 return ret;
}
