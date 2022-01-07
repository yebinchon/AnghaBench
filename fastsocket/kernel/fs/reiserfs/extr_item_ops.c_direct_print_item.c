
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;


 int ih_item_len (struct item_head*) ;
 int printk (char*,...) ;

__attribute__((used)) static void direct_print_item(struct item_head *ih, char *item)
{
 int j = 0;


 printk("\"");
 while (j < ih_item_len(ih))
  printk("%c", item[j++]);
 printk("\"\n");
}
