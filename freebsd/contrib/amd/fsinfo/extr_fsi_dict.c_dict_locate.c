
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* de_next; int de_key; } ;
typedef TYPE_1__ dict_ent ;
struct TYPE_6__ {TYPE_1__** de; } ;
typedef TYPE_2__ dict ;


 int STREQ (int ,char*) ;
 size_t dict_hash (char*) ;

dict_ent *
dict_locate(dict *dp, char *k)
{
  dict_ent *de = dp->de[dict_hash(k)];

  while (de && !STREQ(de->de_key, k))
    de = de->de_next;
  return de;
}
