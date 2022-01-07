
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dictionary {int dummy; } ;
struct TYPE_2__ {int (* free ) (struct dictionary*) ;} ;


 TYPE_1__* DICT_VECTOR (struct dictionary*) ;
 int stub1 (struct dictionary*) ;

void
dict_free (struct dictionary *dict)
{
  (DICT_VECTOR (dict))->free (dict);
}
