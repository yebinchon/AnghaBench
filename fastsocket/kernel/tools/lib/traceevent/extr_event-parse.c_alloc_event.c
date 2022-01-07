
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_format {int dummy; } ;


 struct event_format* calloc (int,int) ;

__attribute__((used)) static struct event_format *alloc_event(void)
{
 return calloc(1, sizeof(struct event_format));
}
