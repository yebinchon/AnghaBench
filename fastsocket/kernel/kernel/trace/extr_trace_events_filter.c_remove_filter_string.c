
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_filter {int * filter_string; } ;


 int kfree (int *) ;

__attribute__((used)) static void remove_filter_string(struct event_filter *filter)
{
 kfree(filter->filter_string);
 filter->filter_string = ((void*)0);
}
