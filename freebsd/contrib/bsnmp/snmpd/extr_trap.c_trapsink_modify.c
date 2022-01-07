
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapsink_dep {scalar_t__ rb_status; char* rb_comm; int set; int status; char* comm; int rb; int rb_version; int version; } ;
struct trapsink {scalar_t__ status; char* comm; int version; } ;


 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int TDEP_COMM ;
 int TDEP_MODIFY ;
 int TDEP_STATUS ;
 int TDEP_VERSION ;
 scalar_t__ TRAPSINK_ACTIVE ;
 scalar_t__ TRAPSINK_NOT_IN_SERVICE ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
trapsink_modify(struct trapsink *t, struct trapsink_dep *tdep)
{
 tdep->rb_status = t->status;
 tdep->rb_version = t->version;
 strcpy(tdep->rb_comm, t->comm);

 if (tdep->set & TDEP_STATUS) {


  if (tdep->status == 2 && tdep->rb_status == TRAPSINK_ACTIVE) {
   t->status = TRAPSINK_NOT_IN_SERVICE;
   tdep->rb |= TDEP_MODIFY;
  }
 }

 if (tdep->set & TDEP_VERSION)
  t->version = tdep->version;
 if (tdep->set & TDEP_COMM)
  strcpy(t->comm, tdep->comm);

 if (tdep->set & TDEP_STATUS) {

  if (tdep->status == 1 && tdep->rb_status != TRAPSINK_ACTIVE) {
   if (t->comm[0] == '\0') {
    t->status = tdep->rb_status;
    t->version = tdep->rb_version;
    strcpy(t->comm, tdep->rb_comm);
    return (SNMP_ERR_INCONS_VALUE);
   }
   t->status = TRAPSINK_ACTIVE;
   tdep->rb |= TDEP_MODIFY;
  }
 }
 return (SNMP_ERR_NOERROR);
}
