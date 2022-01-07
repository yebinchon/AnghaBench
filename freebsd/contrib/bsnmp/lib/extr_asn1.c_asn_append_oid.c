
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_oid {size_t len; int * subs; } ;


 int memcpy (int *,int *,int) ;

void
asn_append_oid(struct asn_oid *to, const struct asn_oid *from)
{
 memcpy(&to->subs[to->len], &from->subs[0],
     from->len * sizeof(from->subs[0]));
 to->len += from->len;
}
