
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* ne_nextentry; scalar_t__ ne_name; } ;
typedef TYPE_1__ nfsentry ;


 scalar_t__ STREQ (char*,scalar_t__) ;

__attribute__((used)) static int
key_already_in_chain(char *keyname, const nfsentry *chain)
{
  const nfsentry *tmpchain = chain;

  while (tmpchain) {
    if (keyname && tmpchain->ne_name && STREQ(keyname, tmpchain->ne_name))
        return 1;
    tmpchain = tmpchain->ne_nextentry;
  }

  return 0;
}
