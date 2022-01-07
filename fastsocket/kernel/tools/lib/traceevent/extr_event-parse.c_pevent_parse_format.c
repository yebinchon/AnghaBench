
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_format {int dummy; } ;
typedef enum pevent_errno { ____Placeholder_pevent_errno } pevent_errno ;


 int __pevent_parse_format (struct event_format**,int *,char const*,unsigned long,char const*) ;

enum pevent_errno pevent_parse_format(struct event_format **eventp, const char *buf,
          unsigned long size, const char *sys)
{
 return __pevent_parse_format(eventp, ((void*)0), buf, size, sys);
}
