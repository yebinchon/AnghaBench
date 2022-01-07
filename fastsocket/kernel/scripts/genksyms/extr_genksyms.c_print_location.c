
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cur_filename ;
 int cur_line ;
 int fprintf (int ,char*,char*,int) ;
 int stderr ;

__attribute__((used)) static void print_location(void)
{
 fprintf(stderr, "%s:%d: ", cur_filename ? : "<stdin>", cur_line);
}
