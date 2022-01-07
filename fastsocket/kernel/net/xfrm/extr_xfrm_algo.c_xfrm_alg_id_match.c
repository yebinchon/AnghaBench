
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sadb_alg_id; } ;
struct xfrm_algo_desc {TYPE_1__ desc; } ;



__attribute__((used)) static int xfrm_alg_id_match(const struct xfrm_algo_desc *entry,
        const void *data)
{
 return entry->desc.sadb_alg_id == (unsigned long)data;
}
