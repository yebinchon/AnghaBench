
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {TYPE_8__* p; } ;
struct TYPE_12__ {TYPE_3__* section; } ;
struct TYPE_10__ {int * abfd; } ;
struct TYPE_9__ {struct bfd_link_hash_entry* link; } ;
struct TYPE_13__ {TYPE_7__ c; TYPE_4__ def; TYPE_2__ undef; TYPE_1__ i; } ;
struct bfd_link_hash_entry {int type; TYPE_5__ u; } ;
typedef int bfd ;
struct TYPE_16__ {TYPE_6__* section; } ;
struct TYPE_14__ {int * owner; } ;
struct TYPE_11__ {int * owner; } ;







 int bfd_link_hash_warning ;

__attribute__((used)) static bfd *
hash_entry_bfd (struct bfd_link_hash_entry *h)
{
  while (h->type == bfd_link_hash_warning)
    h = h->u.i.link;
  switch (h->type)
    {
    default:
      return ((void*)0);
    case 129:
    case 128:
      return h->u.undef.abfd;
    case 131:
    case 130:
      return h->u.def.section->owner;
    case 132:
      return h->u.c.p->section->owner;
    }

}
