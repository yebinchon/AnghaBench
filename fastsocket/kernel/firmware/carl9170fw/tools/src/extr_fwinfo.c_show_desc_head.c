
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carl9170fw_desc_head {int length; int * magic; int cur_ver; int min_ver; } ;


 int P (int ) ;
 int fprintf (int ,char*,int,int,int,int,int,int ,int ) ;
 int le16_to_cpu (int ) ;
 int stdout ;

__attribute__((used)) static void show_desc_head(struct carl9170fw_desc_head *head)
{


 fprintf(stdout, ">\t%c%c%c%c Descriptor: size:%d, compatible:%d, "
   "version:%d\n",
  (isprint(head->magic[0]) ? head->magic[0] : ' '), (isprint(head->magic[1]) ? head->magic[1] : ' '), (isprint(head->magic[2]) ? head->magic[2] : ' '),
  (isprint(head->magic[3]) ? head->magic[3] : ' '), le16_to_cpu(head->length), head->min_ver,
  head->cur_ver);
}
