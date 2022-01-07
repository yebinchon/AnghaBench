
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;
struct carlfw_list_entry {TYPE_1__ h; } ;
struct carlfw {int dummy; } ;
struct carl9170fw_desc_head {int dummy; } ;
struct TYPE_5__ {int list; } ;
struct TYPE_6__ {TYPE_2__ h; } ;


 scalar_t__ IS_ERR (struct carlfw_list_entry*) ;
 int PTR_ERR (struct carlfw_list_entry*) ;
 struct carlfw_list_entry* __carlfw_entry_add_prepare (struct carlfw*,struct carl9170fw_desc_head const*) ;
 TYPE_3__* carlfw_desc_to_entry (struct carl9170fw_desc_head*) ;
 int list_add (int *,int *,int *) ;

int carlfw_desc_add(struct carlfw *fw,
      const struct carl9170fw_desc_head *desc,
      struct carl9170fw_desc_head *prev,
      struct carl9170fw_desc_head *next)
{
 struct carlfw_list_entry *tmp;

 tmp = __carlfw_entry_add_prepare(fw, desc);
 if (IS_ERR(tmp))
  return PTR_ERR(tmp);

 list_add(&tmp->h.list, &((carlfw_desc_to_entry(prev))->h.list),
   &((carlfw_desc_to_entry(next))->h.list));
 return 0;
}
