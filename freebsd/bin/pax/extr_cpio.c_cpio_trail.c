
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ st_size; } ;
struct TYPE_5__ {TYPE_1__ sb; int name; } ;
typedef TYPE_2__ ARCHD ;


 int TRAILER ;
 scalar_t__ strcmp (int ,int ) ;

int
cpio_trail(ARCHD *arcn)
{



 if ((strcmp(arcn->name, TRAILER) == 0) && (arcn->sb.st_size == 0))
  return(0);
 return(-1);
}
