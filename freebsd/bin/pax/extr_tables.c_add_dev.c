
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_dev; } ;
struct TYPE_5__ {TYPE_1__ sb; } ;
typedef TYPE_2__ ARCHD ;


 int * chk_dev (int ,int) ;

int
add_dev(ARCHD *arcn)
{
 if (chk_dev(arcn->sb.st_dev, 1) == ((void*)0))
  return(-1);
 return(0);
}
