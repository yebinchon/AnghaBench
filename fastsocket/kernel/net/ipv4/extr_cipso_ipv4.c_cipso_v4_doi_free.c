
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* std; } ;
struct cipso_v4_doi {int type; TYPE_3__ map; } ;
struct TYPE_6__ {struct cipso_v4_doi* local; struct cipso_v4_doi* cipso; } ;
struct TYPE_5__ {struct cipso_v4_doi* local; struct cipso_v4_doi* cipso; } ;
struct TYPE_8__ {TYPE_2__ cat; TYPE_1__ lvl; } ;



 int kfree (struct cipso_v4_doi*) ;

void cipso_v4_doi_free(struct cipso_v4_doi *doi_def)
{
 if (doi_def == ((void*)0))
  return;

 switch (doi_def->type) {
 case 128:
  kfree(doi_def->map.std->lvl.cipso);
  kfree(doi_def->map.std->lvl.local);
  kfree(doi_def->map.std->cat.cipso);
  kfree(doi_def->map.std->cat.local);
  break;
 }
 kfree(doi_def);
}
