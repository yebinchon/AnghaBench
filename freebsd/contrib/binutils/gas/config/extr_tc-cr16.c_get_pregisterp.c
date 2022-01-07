
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int preg_val; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
typedef TYPE_2__ reg_entry ;
typedef int preg ;


 scalar_t__ hash_find (int ,char*) ;
 int nullpregister ;
 int pregp_hash ;

__attribute__((used)) static preg
get_pregisterp (char *preg_name)
{
  const reg_entry *preg;

  preg = (const reg_entry *) hash_find (pregp_hash, preg_name);

  if (preg != ((void*)0))
    return preg->value.preg_val;

  return nullpregister;
}
