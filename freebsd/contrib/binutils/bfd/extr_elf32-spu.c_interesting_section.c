
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spu_link_hash_table {TYPE_2__* stub; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int flags; scalar_t__ size; TYPE_1__* output_section; } ;
typedef TYPE_2__ asection ;
struct TYPE_4__ {int * owner; } ;


 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_LOAD ;

__attribute__((used)) static bfd_boolean
interesting_section (asection *s, bfd *obfd, struct spu_link_hash_table *htab)
{
  return (s != htab->stub
   && s->output_section != ((void*)0)
   && s->output_section->owner == obfd
   && ((s->flags & (SEC_ALLOC | SEC_LOAD | SEC_CODE))
       == (SEC_ALLOC | SEC_LOAD | SEC_CODE))
   && s->size != 0);
}
