
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_hash_elem ;
struct TYPE_2__ {int insn; } ;


 unsigned int htab_hash_pointer (int ) ;

__attribute__((used)) static unsigned int
htab_hash_elem (const void *p)
{
  p_hash_elem elem = (p_hash_elem) p;
  return htab_hash_pointer (elem->insn);
}
