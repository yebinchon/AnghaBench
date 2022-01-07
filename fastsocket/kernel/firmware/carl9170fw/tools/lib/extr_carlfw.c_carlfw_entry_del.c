
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlfw_list_entry {int dummy; } ;
struct carlfw {int dummy; } ;


 int carlfw_entry_unlink (struct carlfw*,struct carlfw_list_entry*) ;
 int free (struct carlfw_list_entry*) ;

__attribute__((used)) static void carlfw_entry_del(struct carlfw *fw,
 struct carlfw_list_entry *entry)
{
 carlfw_entry_unlink(fw, entry);
 free(entry);
}
