
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlfw_list_entry {int data; } ;
struct carlfw {unsigned int desc_list_len; int desc_list_entries; } ;
struct carl9170fw_desc_head {int length; } ;


 int EINVAL ;
 int ENOMEM ;
 struct carlfw_list_entry* ERR_PTR (int ) ;
 unsigned int le16_to_cpu (int ) ;
 struct carlfw_list_entry* malloc (int) ;
 int memcpy (int ,struct carl9170fw_desc_head const*,unsigned int) ;

__attribute__((used)) static struct carlfw_list_entry *__carlfw_entry_add_prepare(struct carlfw *fw,
 const struct carl9170fw_desc_head *desc)
{
 struct carlfw_list_entry *tmp;
 unsigned int len;

 len = le16_to_cpu(desc->length);

 if (len < sizeof(struct carl9170fw_desc_head))
  return ERR_PTR(-EINVAL);

 tmp = malloc(sizeof(*tmp) + len);
 if (!tmp)
  return ERR_PTR(-ENOMEM);

 fw->desc_list_entries++;
 fw->desc_list_len += len;

 memcpy(tmp->data, desc, len);
 return tmp;
}
