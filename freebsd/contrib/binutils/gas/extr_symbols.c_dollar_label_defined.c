
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dollar_label_count ;
 int* dollar_label_defines ;
 long* dollar_labels ;
 int know (int) ;

int
dollar_label_defined (long label)
{
  long *i;

  know ((dollar_labels != ((void*)0)) || (dollar_label_count == 0));

  for (i = dollar_labels; i < dollar_labels + dollar_label_count; ++i)
    if (*i == label)
      return dollar_label_defines[i - dollar_labels];


  return 0;
}
