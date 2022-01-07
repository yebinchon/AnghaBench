
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ named; } ;
typedef TYPE_2__ section ;
typedef int hashval_t ;


 int htab_hash_string (int ) ;

__attribute__((used)) static hashval_t
section_entry_hash (const void *p)
{
  const section *old = p;
  return htab_hash_string (old->named.name);
}
