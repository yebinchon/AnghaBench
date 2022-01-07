
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ icv_truncbits; } ;
struct TYPE_4__ {TYPE_1__ aead; } ;
struct xfrm_algo_desc {int name; TYPE_2__ uinfo; } ;
struct xfrm_aead_name {char* name; scalar_t__ icvbits; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int xfrm_aead_name_match(const struct xfrm_algo_desc *entry,
    const void *data)
{
 const struct xfrm_aead_name *aead = data;
 const char *name = aead->name;

 return aead->icvbits == entry->uinfo.aead.icv_truncbits && name &&
        !strcmp(name, entry->name);
}
