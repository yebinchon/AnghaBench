
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_flowlabel {struct ip6_flowlabel* opt; int fl_net; } ;


 int kfree (struct ip6_flowlabel*) ;
 int release_net (int ) ;

__attribute__((used)) static void fl_free(struct ip6_flowlabel *fl)
{
 if (fl) {
  release_net(fl->fl_net);
  kfree(fl->opt);
 }
 kfree(fl);
}
