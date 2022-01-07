
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u16 ;
struct hists {int dummy; } ;
struct TYPE_14__ {TYPE_2__* map; TYPE_1__* sym; } ;
struct hist_entry {TYPE_10__* branch_info; TYPE_3__ ms; int thread; } ;
struct TYPE_20__ {TYPE_8__* map; TYPE_7__* sym; } ;
struct TYPE_19__ {int dso; } ;
struct TYPE_18__ {scalar_t__ namelen; } ;
struct TYPE_17__ {TYPE_5__* map; TYPE_4__* sym; } ;
struct TYPE_16__ {int dso; } ;
struct TYPE_15__ {scalar_t__ namelen; } ;
struct TYPE_13__ {int dso; } ;
struct TYPE_12__ {int namelen; } ;
struct TYPE_11__ {TYPE_9__ to; TYPE_6__ from; } ;


 int BITS_PER_LONG ;
 int HISTC_COMM ;
 int HISTC_DSO ;
 int HISTC_DSO_FROM ;
 int HISTC_DSO_TO ;
 int HISTC_SYMBOL ;
 int HISTC_SYMBOL_FROM ;
 int HISTC_SYMBOL_TO ;
 int HISTC_THREAD ;
 int dso__name_len (int ) ;
 scalar_t__ hists__new_col_len (struct hists*,int ,int) ;
 int hists__set_col_len (struct hists*,int ,int) ;
 int hists__set_unres_dso_col_len (struct hists*,int ) ;
 int thread__comm_len (int ) ;

void hists__calc_col_len(struct hists *hists, struct hist_entry *h)
{
 const unsigned int unresolved_col_width = BITS_PER_LONG / 4;
 u16 len;

 if (h->ms.sym)
  hists__new_col_len(hists, HISTC_SYMBOL, h->ms.sym->namelen + 4);
 else
  hists__set_unres_dso_col_len(hists, HISTC_DSO);

 len = thread__comm_len(h->thread);
 if (hists__new_col_len(hists, HISTC_COMM, len))
  hists__set_col_len(hists, HISTC_THREAD, len + 6);

 if (h->ms.map) {
  len = dso__name_len(h->ms.map->dso);
  hists__new_col_len(hists, HISTC_DSO, len);
 }

 if (h->branch_info) {
  int symlen;




  if (h->branch_info->from.sym) {
   symlen = (int)h->branch_info->from.sym->namelen + 4;
   hists__new_col_len(hists, HISTC_SYMBOL_FROM, symlen);

   symlen = dso__name_len(h->branch_info->from.map->dso);
   hists__new_col_len(hists, HISTC_DSO_FROM, symlen);
  } else {
   symlen = unresolved_col_width + 4 + 2;
   hists__new_col_len(hists, HISTC_SYMBOL_FROM, symlen);
   hists__set_unres_dso_col_len(hists, HISTC_DSO_FROM);
  }

  if (h->branch_info->to.sym) {
   symlen = (int)h->branch_info->to.sym->namelen + 4;
   hists__new_col_len(hists, HISTC_SYMBOL_TO, symlen);

   symlen = dso__name_len(h->branch_info->to.map->dso);
   hists__new_col_len(hists, HISTC_DSO_TO, symlen);
  } else {
   symlen = unresolved_col_width + 4 + 2;
   hists__new_col_len(hists, HISTC_SYMBOL_TO, symlen);
   hists__set_unres_dso_col_len(hists, HISTC_DSO_TO);
  }
 }
}
