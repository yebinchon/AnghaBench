
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ voidp ;
typedef TYPE_1__* exports ;
struct TYPE_2__ {int ex_dir; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
sortfun(const voidp x, const voidp y)
{
  exports *a = (exports *) x;
  exports *b = (exports *) y;

  return strcmp((*a)->ex_dir, (*b)->ex_dir);
}
