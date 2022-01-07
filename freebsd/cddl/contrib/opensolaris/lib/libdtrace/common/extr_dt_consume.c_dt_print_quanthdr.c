
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;
typedef int FILE ;


 int dt_printf (int *,int *,char*,int,char*,char*,char*) ;

__attribute__((used)) static int
dt_print_quanthdr(dtrace_hdl_t *dtp, FILE *fp, int width)
{
 return (dt_printf(dtp, fp, "\n%*s %41s %-9s\n",
     width ? width : 16, width ? "key" : "value",
     "------------- Distribution -------------", "count"));
}
