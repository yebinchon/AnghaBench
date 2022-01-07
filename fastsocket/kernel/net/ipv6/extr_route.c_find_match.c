
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int dummy; } ;


 int RT6_LOOKUP_F_REACHABLE ;
 int RT6_NUD_FAIL_DO_RR ;
 int RT6_NUD_FAIL_HARD ;
 scalar_t__ rt6_check_expired (struct rt6_info*) ;
 int rt6_probe (struct rt6_info*) ;
 int rt6_score_route (struct rt6_info*,int,int) ;

__attribute__((used)) static struct rt6_info *find_match(struct rt6_info *rt, int oif, int strict,
       int *mpri, struct rt6_info *match,
       bool *do_rr)
{
 int m;
 bool match_do_rr = 0;

 if (rt6_check_expired(rt))
  goto out;

 m = rt6_score_route(rt, oif, strict);
 if (m == RT6_NUD_FAIL_DO_RR) {
  match_do_rr = 1;
  m = 0;
 } else if (m == RT6_NUD_FAIL_HARD) {
  goto out;
 }

 if (strict & RT6_LOOKUP_F_REACHABLE)
  rt6_probe(rt);


 if (m > *mpri) {
  *do_rr = match_do_rr;
  *mpri = m;
  match = rt;
 }
out:
 return match;
}
