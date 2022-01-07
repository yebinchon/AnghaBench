
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_filter {int filter_string; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kstrdup (char*,int ) ;

__attribute__((used)) static int replace_filter_string(struct event_filter *filter,
     char *filter_string)
{
 kfree(filter->filter_string);
 filter->filter_string = kstrdup(filter_string, GFP_KERNEL);
 if (!filter->filter_string)
  return -ENOMEM;

 return 0;
}
