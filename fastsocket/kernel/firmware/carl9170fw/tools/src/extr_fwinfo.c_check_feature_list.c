
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feature_list {int id; char* name; int (* func ) (struct carl9170fw_desc_head const*,struct carlfw*) ;} ;
struct carlfw {int dummy; } ;
struct carl9170fw_desc_head {int dummy; } ;
typedef int __le32 ;


 int carl9170fw_supports (int const,int) ;
 int fprintf (int ,char*,int,char*) ;
 int stdout ;
 int stub1 (struct carl9170fw_desc_head const*,struct carlfw*) ;

__attribute__((used)) static void check_feature_list(const struct carl9170fw_desc_head *head,
          const __le32 bitmap,
          const struct feature_list *list,
          const unsigned int entries,
          struct carlfw *fw)
{
 unsigned int i;

 for (i = 0; i < entries; i++) {
  if (!carl9170fw_supports(bitmap, list[i].id))
   continue;

  fprintf(stdout, "\t\t%2d = %s\n", list[i].id, list[i].name);
  if (list[i].func)
   list[i].func(head, fw);
 }
}
