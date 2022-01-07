
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {scalar_t__ obsolete; } ;


 int dst_release (struct dst_entry*) ;

__attribute__((used)) static struct dst_entry *xfrm_negative_advice(struct dst_entry *dst)
{
 if (dst) {
  if (dst->obsolete) {
   dst_release(dst);
   dst = ((void*)0);
  }
 }
 return dst;
}
