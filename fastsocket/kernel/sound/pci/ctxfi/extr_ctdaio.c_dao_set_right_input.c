
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rsc {TYPE_2__* ops; } ;
struct imapper {int addr; int user; int slot; } ;
struct TYPE_12__ {int msr; TYPE_3__* ops; } ;
struct TYPE_9__ {int msr; } ;
struct daio {TYPE_4__ rscr; TYPE_1__ rscl; } ;
struct dao {struct imapper** imappers; TYPE_6__* mgr; struct daio daio; } ;
struct TYPE_13__ {int (* imap_add ) (TYPE_6__*,struct imapper*) ;} ;
struct TYPE_11__ {int (* master ) (TYPE_4__*) ;int (* next_conj ) (TYPE_4__*) ;int (* index ) (TYPE_4__*) ;} ;
struct TYPE_10__ {int (* master ) (struct rsc*) ;int (* next_conj ) (struct rsc*) ;int (* output_slot ) (struct rsc*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct imapper* kzalloc (int,int ) ;
 int stub1 (struct rsc*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (struct rsc*) ;
 int stub4 (TYPE_4__*) ;
 int stub5 (TYPE_6__*,struct imapper*) ;
 int stub6 (struct rsc*) ;
 int stub7 (TYPE_4__*) ;
 int stub8 (struct rsc*) ;
 int stub9 (TYPE_4__*) ;

__attribute__((used)) static int dao_set_right_input(struct dao *dao, struct rsc *input)
{
 struct imapper *entry;
 struct daio *daio = &dao->daio;
 int i;

 entry = kzalloc((sizeof(*entry) * daio->rscr.msr), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;


 input->ops->master(input);
 daio->rscr.ops->master(&daio->rscr);
 for (i = 0; i < daio->rscr.msr; i++, entry++) {
  entry->slot = input->ops->output_slot(input);
  entry->user = entry->addr = daio->rscr.ops->index(&daio->rscr);
  dao->mgr->imap_add(dao->mgr, entry);
  dao->imappers[daio->rscl.msr + i] = entry;

  input->ops->next_conj(input);
  daio->rscr.ops->next_conj(&daio->rscr);
 }
 input->ops->master(input);
 daio->rscr.ops->master(&daio->rscr);

 return 0;
}
