
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapsink_dep {int rb_status; } ;
struct trapsink {int status; } ;


 int SNMP_ERR_NOERROR ;

__attribute__((used)) static int
trapsink_undestroy(struct trapsink *t, struct trapsink_dep *tdep)
{
 t->status = tdep->rb_status;
 return (SNMP_ERR_NOERROR);
}
