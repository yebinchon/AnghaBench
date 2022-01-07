
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 int HZ ;

__attribute__((used)) static void *cachefiles_histogram_next(struct seq_file *m, void *v, loff_t *pos)
{
 (*pos)++;
 return (unsigned long long)*pos > HZ + 2 ?
  ((void*)0) : (void *)(unsigned long) *pos;
}
