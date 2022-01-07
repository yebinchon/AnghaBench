
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {scalar_t__ first_ip; scalar_t__ last_ip; scalar_t__ timeout; } ;



__attribute__((used)) static bool
bitmap_ipmac_same_set(const struct ip_set *a, const struct ip_set *b)
{
 const struct bitmap_ipmac *x = a->data;
 const struct bitmap_ipmac *y = b->data;

 return x->first_ip == y->first_ip &&
        x->last_ip == y->last_ip &&
        x->timeout == y->timeout;
}
