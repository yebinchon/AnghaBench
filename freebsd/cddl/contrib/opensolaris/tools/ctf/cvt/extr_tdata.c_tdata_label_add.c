
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int td_nextid; int td_labels; } ;
typedef TYPE_1__ tdata_t ;
struct TYPE_7__ {int le_idx; int le_name; } ;
typedef TYPE_2__ labelent_t ;


 int slist_add (int *,TYPE_2__*,int ) ;
 int tdata_label_cmp ;
 TYPE_2__* xmalloc (int) ;
 int xstrdup (char const*) ;

void
tdata_label_add(tdata_t *td, const char *label, int idx)
{
 labelent_t *le = xmalloc(sizeof (*le));

 le->le_name = xstrdup(label);
 le->le_idx = (idx == -1 ? td->td_nextid - 1 : idx);

 slist_add(&td->td_labels, le, tdata_label_cmp);
}
