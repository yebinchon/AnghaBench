
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* print_fmt; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct trace_probe {TYPE_2__ call; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __set_print_fmt (struct trace_probe*,char*,int) ;
 char* kmalloc (int,int ) ;

__attribute__((used)) static int set_print_fmt(struct trace_probe *tp)
{
 int len;
 char *print_fmt;


 len = __set_print_fmt(tp, ((void*)0), 0);
 print_fmt = kmalloc(len + 1, GFP_KERNEL);
 if (!print_fmt)
  return -ENOMEM;


 __set_print_fmt(tp, print_fmt, len + 1);
 tp->call.fmt.print_fmt = print_fmt;

 return 0;
}
