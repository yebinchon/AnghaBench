
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int dummy; } ;
struct km_event {int dummy; } ;



__attribute__((used)) static int key_notify_policy_expire(struct xfrm_policy *xp, struct km_event *c)
{
 return 0;
}
