
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int dtrace_hdl_t ;
typedef scalar_t__ caddr_t ;
typedef int FILE ;


 int dt_printf (int *,int *,char*,unsigned long long) ;
 scalar_t__ dt_stddev (scalar_t__*,scalar_t__) ;

__attribute__((used)) static int
dt_print_stddev(dtrace_hdl_t *dtp, FILE *fp, caddr_t addr,
    size_t size, uint64_t normal)
{

 uint64_t *data = (uint64_t *)addr;

 return (dt_printf(dtp, fp, " %16llu", data[0] ?
     (unsigned long long) dt_stddev(data, normal) : 0));
}
