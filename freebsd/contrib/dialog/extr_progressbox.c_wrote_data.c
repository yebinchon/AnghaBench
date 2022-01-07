
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* text; struct TYPE_4__* link; } ;
typedef TYPE_1__ WROTE ;
struct TYPE_5__ {TYPE_1__* wrote; } ;
typedef TYPE_2__ MY_OBJ ;



__attribute__((used)) static const char *
wrote_data(MY_OBJ * obj, int want)
{
    const char *result = ((void*)0);
    WROTE *wrote = obj->wrote;
    while (wrote != ((void*)0) && want > 0) {
 result = wrote->text;
 wrote = wrote->link;
 want--;
    }
    return result;
}
