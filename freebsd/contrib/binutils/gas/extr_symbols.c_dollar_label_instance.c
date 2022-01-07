
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dollar_label_count ;
 long* dollar_label_instances ;
 long* dollar_labels ;
 int know (int) ;

__attribute__((used)) static long
dollar_label_instance (long label)
{
  long *i;

  know ((dollar_labels != ((void*)0)) || (dollar_label_count == 0));

  for (i = dollar_labels; i < dollar_labels + dollar_label_count; ++i)
    if (*i == label)
      return (dollar_label_instances[i - dollar_labels]);



  return 0;
}
