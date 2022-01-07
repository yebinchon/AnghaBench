
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_options {int optlen; int * __data; } ;


 int EINVAL ;
 int IPOPT_END ;
 scalar_t__ ip_options_compile (struct net*,struct ip_options*,int *) ;
 int kfree_ip_options (struct ip_options*) ;

__attribute__((used)) static int ip_options_get_finish(struct net *net, struct ip_options **optp,
     struct ip_options *opt, int optlen)
{
 while (optlen & 3)
  opt->__data[optlen++] = IPOPT_END;
 opt->optlen = optlen;
 if (optlen && ip_options_compile(net, opt, ((void*)0))) {
  kfree_ip_options(opt);
  return -EINVAL;
 }
 kfree_ip_options(*optp);
 *optp = opt;
 return 0;
}
