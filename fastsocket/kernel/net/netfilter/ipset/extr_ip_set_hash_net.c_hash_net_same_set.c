
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set_hash {scalar_t__ maxelem; scalar_t__ timeout; } ;
struct ip_set {struct ip_set_hash* data; } ;



__attribute__((used)) static bool
hash_net_same_set(const struct ip_set *a, const struct ip_set *b)
{
 const struct ip_set_hash *x = a->data;
 const struct ip_set_hash *y = b->data;


 return x->maxelem == y->maxelem &&
        x->timeout == y->timeout;
}
