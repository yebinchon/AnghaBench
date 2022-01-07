
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_recdesc_t ;
typedef int dtrace_probedata_t ;
struct TYPE_2__ {int (* dtbgn_recfunc ) (int const*,int const*,int ) ;int dtbgn_arg; } ;
typedef TYPE_1__ dt_begin_t ;


 int stub1 (int const*,int const*,int ) ;

__attribute__((used)) static int
dt_consume_begin_record(const dtrace_probedata_t *data,
    const dtrace_recdesc_t *rec, void *arg)
{
 dt_begin_t *begin = arg;

 return (begin->dtbgn_recfunc(data, rec, begin->dtbgn_arg));
}
