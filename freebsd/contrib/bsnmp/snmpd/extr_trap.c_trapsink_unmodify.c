
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapsink_dep {int set; int rb_comm; int rb_version; int rb_status; } ;
struct trapsink {int comm; int version; int status; } ;


 int SNMP_ERR_NOERROR ;
 int TDEP_COMM ;
 int TDEP_STATUS ;
 int TDEP_VERSION ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
trapsink_unmodify(struct trapsink *t, struct trapsink_dep *tdep)
{
 if (tdep->set & TDEP_STATUS)
  t->status = tdep->rb_status;
 if (tdep->set & TDEP_VERSION)
  t->version = tdep->rb_version;
 if (tdep->set & TDEP_COMM)
  strcpy(t->comm, tdep->rb_comm);

 return (SNMP_ERR_NOERROR);
}
