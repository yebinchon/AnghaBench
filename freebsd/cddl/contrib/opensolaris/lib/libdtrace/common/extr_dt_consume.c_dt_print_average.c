
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int int64_t ;
typedef int dtrace_hdl_t ;
typedef scalar_t__ caddr_t ;
typedef int FILE ;


 int dt_printf (int *,int *,char*,long long) ;

__attribute__((used)) static int
dt_print_average(dtrace_hdl_t *dtp, FILE *fp, caddr_t addr,
    size_t size, uint64_t normal)
{

 int64_t *data = (int64_t *)addr;

 return (dt_printf(dtp, fp, " %16lld", data[0] ?
     (long long)(data[1] / (int64_t)normal / data[0]) : 0));
}
