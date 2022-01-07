
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int context; } ;
struct TYPE_7__ {char* name; } ;
typedef int Hash_Search ;
typedef TYPE_1__ Hash_Entry ;
typedef TYPE_2__ GNode ;


 scalar_t__ DEBUG (int ) ;
 int DIR ;
 int Hash_DeleteEntry (int *,TYPE_1__*) ;
 TYPE_1__* Hash_EnumFirst (int *,int *) ;
 TYPE_1__* Hash_EnumNext (int *) ;
 int fprintf (int ,char*,char*) ;
 TYPE_2__* get_cached_realpaths () ;
 int stderr ;

__attribute__((used)) static void
purge_cached_realpaths(void)
{
    GNode *cache = get_cached_realpaths();
    Hash_Entry *he, *nhe;
    Hash_Search hs;

    he = Hash_EnumFirst(&cache->context, &hs);
    while (he) {
 nhe = Hash_EnumNext(&hs);
 if (he->name[0] != '/') {
     if (DEBUG(DIR))
  fprintf(stderr, "cached_realpath: purging %s\n", he->name);
     Hash_DeleteEntry(&cache->context, he);
 }
 he = nhe;
    }
}
