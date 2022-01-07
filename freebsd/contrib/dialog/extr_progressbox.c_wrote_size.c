
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* link; } ;
typedef TYPE_1__ WROTE ;
struct TYPE_5__ {TYPE_1__* wrote; } ;
typedef TYPE_2__ MY_OBJ ;



__attribute__((used)) static int
wrote_size(MY_OBJ * obj, int want)
{
    int result = 0;
    WROTE *wrote = obj->wrote;
    while (wrote != ((void*)0) && want > 0) {
 wrote = wrote->link;
 want--;
 result++;
    }
    return result;
}
