
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mm; } ;
struct TYPE_5__ {int inode; } ;
struct TYPE_4__ {int offset; int ptr; } ;
union futex_key {TYPE_3__ private; TYPE_2__ shared; TYPE_1__ both; } ;




 int WARN_ON_ONCE (int) ;
 int iput (int ) ;
 int mmdrop (int ) ;

__attribute__((used)) static void drop_futex_key_refs(union futex_key *key)
{
 if (!key->both.ptr) {

  WARN_ON_ONCE(1);
  return;
 }

 switch (key->both.offset & (129|128)) {
 case 129:
  iput(key->shared.inode);
  break;
 case 128:
  mmdrop(key->private.mm);
  break;
 }
}
