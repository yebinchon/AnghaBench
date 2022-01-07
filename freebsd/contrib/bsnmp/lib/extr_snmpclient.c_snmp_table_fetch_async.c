
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;
struct tabwork {int first; int pdu; scalar_t__ last_change; void* arg; int callback; struct table worklist; struct table* table; scalar_t__ iter; struct snmp_table const* descr; } ;
struct snmp_table {int dummy; } ;
typedef int snmp_table_cb_f ;


 int TAILQ_INIT (struct table*) ;
 int errno ;
 int free (struct tabwork*) ;
 struct tabwork* malloc (int) ;
 int seterr (int *,char*,int ) ;
 int snmp_client ;
 int snmp_pdu_send (int *,int ,struct tabwork*) ;
 int strerror (int ) ;
 int table_cb ;
 int table_init_pdu (struct snmp_table const*,int *) ;

int
snmp_table_fetch_async(const struct snmp_table *descr, void *list,
    snmp_table_cb_f func, void *arg)
{
 struct tabwork *work;

 if ((work = malloc(sizeof(*work))) == ((void*)0)) {
  seterr(&snmp_client, "%s", strerror(errno));
  return (-1);
 }

 work->descr = descr;
 work->table = (struct table *)list;
 work->iter = 0;
 TAILQ_INIT(work->table);
 TAILQ_INIT(&work->worklist);

 work->callback = func;
 work->arg = arg;




 work->first = 1;
 work->last_change = 0;
 table_init_pdu(descr, &work->pdu);

 if (snmp_pdu_send(&work->pdu, table_cb, work) == -1) {
  free(work);
  work = ((void*)0);
  return (-1);
 }
 return (0);
}
