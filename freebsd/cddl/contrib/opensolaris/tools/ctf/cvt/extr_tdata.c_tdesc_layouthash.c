
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_16__ {char* t_name; int t_type; int t_id; TYPE_7__* t_emem; TYPE_6__* t_members; TYPE_5__* t_ardef; TYPE_3__* t_fndef; TYPE_1__* t_tdesc; } ;
typedef TYPE_8__ tdesc_t ;
struct TYPE_15__ {char* el_name; } ;
struct TYPE_14__ {char* ml_name; } ;
struct TYPE_13__ {int ad_nelems; TYPE_4__* ad_contents; } ;
struct TYPE_12__ {char* t_name; } ;
struct TYPE_11__ {int fn_nargs; int fn_vargs; TYPE_2__* fn_ret; } ;
struct TYPE_10__ {char* t_name; } ;
struct TYPE_9__ {char* t_name; } ;
 int hash_name (int,char*) ;
 int warning (char*,int,int ) ;

int
tdesc_layouthash(int nbuckets, void *node)
{
 tdesc_t *tdp = node;
 char *name = ((void*)0);
 ulong_t h = 0;

 if (tdp->t_name)
  name = tdp->t_name;
 else {
  switch (tdp->t_type) {
  case 133:
  case 130:
  case 128:
  case 136:
  case 132:
   name = tdp->t_tdesc->t_name;
   break;
  case 134:
   h = tdp->t_fndef->fn_nargs +
       tdp->t_fndef->fn_vargs;
   name = tdp->t_fndef->fn_ret->t_name;
   break;
  case 137:
   h = tdp->t_ardef->ad_nelems;
   name = tdp->t_ardef->ad_contents->t_name;
   break;
  case 131:
  case 129:






   if (tdp->t_members != ((void*)0))
    name = tdp->t_members->ml_name;
   break;
  case 135:

   name = tdp->t_emem->el_name;
   break;
  default:




   warning("Unexpected unnamed %d tdesc (ID %d)\n",
       tdp->t_type, tdp->t_id);
  }
 }

 if (name)
  return (hash_name(nbuckets, name));

 return (h % nbuckets);
}
