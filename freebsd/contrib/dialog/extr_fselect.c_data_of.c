
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** data; size_t choice; } ;
typedef TYPE_1__ LIST ;



__attribute__((used)) static char *
data_of(LIST * list)
{
    if (list != 0
 && list->data != 0)
 return list->data[list->choice];
    return 0;
}
