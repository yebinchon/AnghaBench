
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ voidp ;
struct TYPE_2__ {int uid; } ;
typedef TYPE_1__ uid2home_t ;



__attribute__((used)) static int
plt_compare_fxn(const voidp x, const voidp y)

{
  uid2home_t *i = (uid2home_t *) x;
  uid2home_t *j = (uid2home_t *) y;

  return i->uid - j->uid;
}
