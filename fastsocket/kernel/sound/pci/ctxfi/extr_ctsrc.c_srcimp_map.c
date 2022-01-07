
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int msr; TYPE_2__* ops; } ;
struct srcimp {int mapped; TYPE_4__ rsc; TYPE_5__* mgr; struct imapper* imappers; } ;
struct TYPE_16__ {TYPE_1__* ops; } ;
struct src {TYPE_7__ rsc; } ;
struct rsc {TYPE_3__* ops; } ;
struct imapper {int addr; int user; int slot; } ;
struct TYPE_15__ {int (* imap_add ) (TYPE_5__*,struct imapper*) ;} ;
struct TYPE_13__ {int (* master ) (struct rsc*) ;int (* next_conj ) (struct rsc*) ;int (* output_slot ) (struct rsc*) ;} ;
struct TYPE_12__ {int (* master ) (TYPE_4__*) ;int (* next_conj ) (TYPE_4__*) ;int (* index ) (TYPE_4__*) ;} ;
struct TYPE_11__ {int (* index ) (TYPE_7__*) ;int (* master ) (TYPE_7__*) ;} ;


 int stub1 (TYPE_4__*) ;
 int stub10 (TYPE_4__*) ;
 int stub11 (struct rsc*) ;
 int stub2 (TYPE_7__*) ;
 int stub3 (struct rsc*) ;
 int stub4 (struct rsc*) ;
 int stub5 (TYPE_7__*) ;
 int stub6 (TYPE_4__*) ;
 int stub7 (TYPE_5__*,struct imapper*) ;
 int stub8 (TYPE_4__*) ;
 int stub9 (struct rsc*) ;

__attribute__((used)) static int srcimp_map(struct srcimp *srcimp, struct src *src, struct rsc *input)
{
 struct imapper *entry;
 int i;

 srcimp->rsc.ops->master(&srcimp->rsc);
 src->rsc.ops->master(&src->rsc);
 input->ops->master(input);


 for (i = 0; i < srcimp->rsc.msr; i++) {
  entry = &srcimp->imappers[i];
  entry->slot = input->ops->output_slot(input);
  entry->user = src->rsc.ops->index(&src->rsc);
  entry->addr = srcimp->rsc.ops->index(&srcimp->rsc);
  srcimp->mgr->imap_add(srcimp->mgr, entry);
  srcimp->mapped |= (0x1 << i);

  srcimp->rsc.ops->next_conj(&srcimp->rsc);
  input->ops->next_conj(input);
 }

 srcimp->rsc.ops->master(&srcimp->rsc);
 input->ops->master(input);

 return 0;
}
