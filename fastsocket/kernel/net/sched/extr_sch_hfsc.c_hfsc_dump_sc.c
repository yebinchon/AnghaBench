
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsc ;
struct tc_service_curve {void* m2; int d; void* m1; } ;
struct sk_buff {int len; } ;
struct internal_sc {int sm2; int dx; int sm1; } ;


 int NLA_PUT (struct sk_buff*,int,int,struct tc_service_curve*) ;
 int dx2d (int ) ;
 void* sm2m (int ) ;

__attribute__((used)) static int
hfsc_dump_sc(struct sk_buff *skb, int attr, struct internal_sc *sc)
{
 struct tc_service_curve tsc;

 tsc.m1 = sm2m(sc->sm1);
 tsc.d = dx2d(sc->dx);
 tsc.m2 = sm2m(sc->sm2);
 NLA_PUT(skb, attr, sizeof(tsc), &tsc);

 return skb->len;

 nla_put_failure:
 return -1;
}
