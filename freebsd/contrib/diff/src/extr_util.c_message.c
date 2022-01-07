
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int message5 (char const*,char const*,char const*,int ,int ) ;

void
message (char const *format_msgid, char const *arg1, char const *arg2)
{
  message5 (format_msgid, arg1, arg2, 0, 0);
}
