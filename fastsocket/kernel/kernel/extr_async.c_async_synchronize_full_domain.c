
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_domain {int dummy; } ;


 int async_synchronize_cookie_domain (int ,struct async_domain*) ;
 int next_cookie ;

void async_synchronize_full_domain(struct async_domain *domain)
{
 async_synchronize_cookie_domain(next_cookie, domain);
}
