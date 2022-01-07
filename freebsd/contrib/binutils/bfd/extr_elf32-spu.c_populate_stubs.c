
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stubarr {size_t count; struct spu_stub_hash_entry** sh; } ;
struct spu_stub_hash_entry {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
typedef int bfd_boolean ;


 int TRUE ;

__attribute__((used)) static bfd_boolean
populate_stubs (struct bfd_hash_entry *bh, void *inf)
{
  struct stubarr *stubs = inf;

  stubs->sh[--stubs->count] = (struct spu_stub_hash_entry *) bh;
  return TRUE;
}
