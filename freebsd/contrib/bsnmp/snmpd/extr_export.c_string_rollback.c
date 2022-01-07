
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct snmp_context {TYPE_1__* scratch; } ;
struct TYPE_2__ {int * ptr1; } ;


 int free (int *) ;

void
string_rollback(struct snmp_context *ctx, u_char **valp)
{
 free(*valp);
 *valp = ctx->scratch->ptr1;
}
