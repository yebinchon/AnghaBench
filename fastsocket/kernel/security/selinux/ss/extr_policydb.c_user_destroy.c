
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cat; } ;
struct TYPE_5__ {TYPE_3__* level; } ;
struct user_datum {TYPE_1__ dfltlevel; TYPE_2__ range; int roles; } ;
struct TYPE_6__ {int cat; } ;


 int ebitmap_destroy (int *) ;
 int kfree (void*) ;

__attribute__((used)) static int user_destroy(void *key, void *datum, void *p)
{
 struct user_datum *usrdatum;

 kfree(key);
 usrdatum = datum;
 ebitmap_destroy(&usrdatum->roles);
 ebitmap_destroy(&usrdatum->range.level[0].cat);
 ebitmap_destroy(&usrdatum->range.level[1].cat);
 ebitmap_destroy(&usrdatum->dfltlevel.cat);
 kfree(datum);
 return 0;
}
