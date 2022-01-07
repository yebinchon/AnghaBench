
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* nextentry; scalar_t__ name; } ;
typedef TYPE_1__ am_entry3 ;


 scalar_t__ STREQ (char*,scalar_t__) ;

__attribute__((used)) static int
key_already_in_chain3(char *keyname, const am_entry3 *chain)
{
  const am_entry3 *tmpchain = chain;

  while (tmpchain) {
    if (keyname && tmpchain->name && STREQ(keyname, tmpchain->name))
        return 1;
    tmpchain = tmpchain->nextentry;
  }

  return 0;
}
