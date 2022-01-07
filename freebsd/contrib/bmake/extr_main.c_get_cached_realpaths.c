
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ GNode ;


 int INTERNAL ;
 TYPE_1__* Targ_NewGN (char*) ;
 TYPE_1__* cached_realpaths ;

__attribute__((used)) static GNode *
get_cached_realpaths(void)
{

    if (!cached_realpaths) {
 cached_realpaths = Targ_NewGN("Realpath");

 cached_realpaths->flags = INTERNAL;

    }

    return cached_realpaths;
}
