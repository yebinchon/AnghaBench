
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlm_cookie {int len; int data; } ;


 int atomic_inc_return (int *) ;
 int memcpy (int ,int *,int) ;
 int nlm_cookie ;

void nlmclnt_next_cookie(struct nlm_cookie *c)
{
 u32 cookie = atomic_inc_return(&nlm_cookie);

 memcpy(c->data, &cookie, 4);
 c->len=4;
}
