
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg_val; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
typedef TYPE_2__ reg_entry ;
typedef int reg ;


 int _ (char*) ;
 int as_bad (int ,int) ;
 scalar_t__ hash_find (int ,char*) ;
 int nullregister ;
 int regp_hash ;

__attribute__((used)) static reg
get_index_register_pair (char *reg_name)
{
  const reg_entry *reg;

  reg = (const reg_entry *) hash_find (regp_hash, reg_name);

  if (reg != ((void*)0))
    {
      if ((reg->value.reg_val != 1) || (reg->value.reg_val != 7)
   || (reg->value.reg_val != 9) || (reg->value.reg_val > 10))
 return reg->value.reg_val;

      as_bad (_("Unknown register pair - index relative mode: `%d'"), reg->value.reg_val);
    }

  return nullregister;
}
