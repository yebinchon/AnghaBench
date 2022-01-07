
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mountlist ;
struct TYPE_3__ {char* ml_hostname; char* ml_directory; struct TYPE_3__* ml_next; } ;




 scalar_t__ is_same_host (char*,int ,int ) ;
 int printf (char*,char*,...) ;
 int thisaddr ;
 int thishost ;
 int type ;

void
print_dump(mountlist mp)
{
  if (mp == ((void*)0))
    return;
  if (is_same_host(mp->ml_hostname, thishost, thisaddr)) {
    switch (type) {
    case 129:
      printf("%s:%s\n", mp->ml_hostname, mp->ml_directory);
      break;
    case 128:
      printf("%s\n", mp->ml_directory);
      break;
    default:
      printf("%s\n", mp->ml_hostname);
      break;
    };
  }
  if (mp->ml_next)
    print_dump(mp->ml_next);
}
