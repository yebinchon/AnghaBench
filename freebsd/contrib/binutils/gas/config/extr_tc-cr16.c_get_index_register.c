
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


 scalar_t__ hash_find (int ,char*) ;
 int nullregister ;
 int reg_hash ;

__attribute__((used)) static reg
get_index_register (char *reg_name)
{
  const reg_entry *reg;

  reg = (const reg_entry *) hash_find (reg_hash, reg_name);

  if ((reg != ((void*)0))
      && ((reg->value.reg_val == 12) || (reg->value.reg_val == 13)))
    return reg->value.reg_val;

  return nullregister;
}
