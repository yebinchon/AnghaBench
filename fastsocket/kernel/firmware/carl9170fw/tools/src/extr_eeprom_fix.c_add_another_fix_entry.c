
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carlfw {int dummy; } ;
struct carl9170fw_fix_entry {int dummy; } ;
struct TYPE_2__ {int length; } ;
struct carl9170fw_fix_desc {int * data; TYPE_1__ head; } ;


 scalar_t__ IS_ERR_OR_NULL (struct carl9170fw_fix_desc*) ;
 scalar_t__ PTR_ERR (struct carl9170fw_fix_desc*) ;
 struct carl9170fw_fix_desc* carlfw_desc_mod_len (struct carlfw*,TYPE_1__*,int) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,struct carl9170fw_fix_entry*,int) ;

__attribute__((used)) static int
add_another_fix_entry(struct carlfw *fw, struct carl9170fw_fix_desc *fix,
   struct carl9170fw_fix_entry *fix_entry)
{
 unsigned int entry;

 fix = carlfw_desc_mod_len(fw, &fix->head, sizeof(*fix_entry));
 if (IS_ERR_OR_NULL(fix))
  return (int) PTR_ERR(fix);

 entry = (le16_to_cpu(fix->head.length) - sizeof(*fix)) /
  sizeof(*fix_entry) - 1;

 memcpy(&fix->data[entry], fix_entry, sizeof(*fix_entry));
 return 0;
}
