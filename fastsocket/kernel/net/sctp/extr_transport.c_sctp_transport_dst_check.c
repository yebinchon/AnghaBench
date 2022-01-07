
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_transport {struct dst_entry* dst; } ;
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct TYPE_2__ {int * (* check ) (struct dst_entry*,int ) ;} ;


 int dst_release (struct dst_entry*) ;
 int * stub1 (struct dst_entry*,int ) ;

__attribute__((used)) static struct dst_entry *sctp_transport_dst_check(struct sctp_transport *t)
{
 struct dst_entry *dst = t->dst;

 if (dst && dst->obsolete && dst->ops->check(dst, 0) == ((void*)0)) {
  dst_release(t->dst);
  t->dst = ((void*)0);
  return ((void*)0);
 }

 return dst;
}
