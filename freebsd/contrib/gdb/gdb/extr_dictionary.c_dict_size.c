
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dictionary {int dummy; } ;
struct TYPE_2__ {int (* size ) (struct dictionary const*) ;} ;


 TYPE_1__* DICT_VECTOR (struct dictionary const*) ;
 int stub1 (struct dictionary const*) ;

int
dict_size (const struct dictionary *dict)
{
  return (DICT_VECTOR (dict))->size (dict);
}
