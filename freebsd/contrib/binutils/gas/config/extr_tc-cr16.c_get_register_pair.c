
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
 int regp_hash ;
 int strcat (char*,char*) ;

__attribute__((used)) static reg
get_register_pair (char *reg_name)
{
  const reg_entry *reg;
  char tmp_rp[16]="\0";


  if (reg_name[0] != '(')
    {
      tmp_rp[0] = '(';
      strcat (tmp_rp, reg_name);
      strcat (tmp_rp,")");
      reg = (const reg_entry *) hash_find (regp_hash, tmp_rp);
    }
  else
    reg = (const reg_entry *) hash_find (regp_hash, reg_name);

  if (reg != ((void*)0))
    return reg->value.reg_val;

  return nullregister;
}
