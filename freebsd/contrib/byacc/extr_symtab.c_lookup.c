
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* link; int name; } ;
typedef TYPE_1__ bucket ;


 int hash (char const*) ;
 TYPE_1__* last_symbol ;
 TYPE_1__* make_bucket (char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 TYPE_1__** symbol_table ;

bucket *
lookup(const char *name)
{
    bucket *bp, **bpp;

    bpp = symbol_table + hash(name);
    bp = *bpp;

    while (bp)
    {
 if (strcmp(name, bp->name) == 0)
     return (bp);
 bpp = &bp->link;
 bp = *bpp;
    }

    *bpp = bp = make_bucket(name);
    last_symbol->next = bp;
    last_symbol = bp;

    return (bp);
}
