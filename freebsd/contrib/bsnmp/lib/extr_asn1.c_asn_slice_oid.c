
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct asn_oid {size_t len; int * subs; } ;


 int memcpy (int *,int *,int) ;

void
asn_slice_oid(struct asn_oid *dest, const struct asn_oid *src,
    u_int from, u_int to)
{
 if (from >= to) {
  dest->len = 0;
  return;
 }
 dest->len = to - from;
 memcpy(dest->subs, &src->subs[from], dest->len * sizeof(dest->subs[0]));
}
