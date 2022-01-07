
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dollar_label_count ;
 int dollar_label_defines ;
 int memset (int ,char,unsigned int) ;

void
dollar_label_clear (void)
{
  memset (dollar_label_defines, '\0', (unsigned int) dollar_label_count);
}
