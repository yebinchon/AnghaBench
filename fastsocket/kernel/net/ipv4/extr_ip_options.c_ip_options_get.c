
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_options {int __data; } ;


 int ENOMEM ;
 struct ip_options* ip_options_get_alloc (int) ;
 int ip_options_get_finish (struct net*,struct ip_options**,struct ip_options*,int) ;
 int memcpy (int ,unsigned char*,int) ;

int ip_options_get(struct net *net, struct ip_options **optp,
     unsigned char *data, int optlen)
{
 struct ip_options *opt = ip_options_get_alloc(optlen);

 if (!opt)
  return -ENOMEM;
 if (optlen)
  memcpy(opt->__data, data, optlen);
 return ip_options_get_finish(net, optp, opt, optlen);
}
