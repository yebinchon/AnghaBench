
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_transaction_argresp {size_t size; } ;
struct file {struct simple_transaction_argresp* private_data; } ;


 int BUG_ON (int) ;
 size_t SIMPLE_TRANSACTION_LIMIT ;
 int smp_mb () ;

void simple_transaction_set(struct file *file, size_t n)
{
 struct simple_transaction_argresp *ar = file->private_data;

 BUG_ON(n > SIMPLE_TRANSACTION_LIMIT);





 smp_mb();
 ar->size = n;
}
