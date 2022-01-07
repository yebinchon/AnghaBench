
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_count; int irqs_unhandled; int last_unhandled; } ;
typedef int off_t ;


 struct irq_desc* irq_to_desc (long) ;
 int jiffies_to_msecs (int ) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static int irq_spurious_read(char *page, char **start, off_t off,
      int count, int *eof, void *data)
{
 struct irq_desc *desc = irq_to_desc((long) data);
 return sprintf(page, "count %u\n"
        "unhandled %u\n"
        "last_unhandled %u ms\n",
   desc->irq_count,
   desc->irqs_unhandled,
   jiffies_to_msecs(desc->last_unhandled));
}
