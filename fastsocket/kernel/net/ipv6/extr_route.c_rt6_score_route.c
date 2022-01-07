
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_flags; } ;


 int IPV6_DECODE_PREF (int ) ;
 int IPV6_EXTRACT_PREF (int ) ;
 int RT6_LOOKUP_F_IFACE ;
 int RT6_LOOKUP_F_REACHABLE ;
 int RT6_NUD_FAIL_HARD ;
 int rt6_check_dev (struct rt6_info*,int) ;
 int rt6_check_neigh (struct rt6_info*) ;

__attribute__((used)) static int rt6_score_route(struct rt6_info *rt, int oif,
      int strict)
{
 int m;

 m = rt6_check_dev(rt, oif);
 if (!m && (strict & RT6_LOOKUP_F_IFACE))
  return RT6_NUD_FAIL_HARD;



 if (strict & RT6_LOOKUP_F_REACHABLE) {
  int n = rt6_check_neigh(rt);
  if (n < 0)
   return n;
 }
 return m;
}
