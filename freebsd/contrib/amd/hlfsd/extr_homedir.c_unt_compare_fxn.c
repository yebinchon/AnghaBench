
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ voidp ;
struct TYPE_2__ {int username; } ;
typedef TYPE_1__ username2uid_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
unt_compare_fxn(const voidp x, const voidp y)
{
  username2uid_t *i = (username2uid_t *) x;
  username2uid_t *j = (username2uid_t *) y;

  return strcmp(i->username, j->username);
}
