
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_options {int dummy; } ;


 int GFP_KERNEL ;
 struct ip_options* kzalloc_ip_options (int const,int ) ;

__attribute__((used)) static struct ip_options *ip_options_get_alloc(const int optlen)
{
 return kzalloc_ip_options(((optlen + 3) & ~3), GFP_KERNEL);
}
