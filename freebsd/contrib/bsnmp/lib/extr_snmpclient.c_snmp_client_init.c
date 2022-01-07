
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_msg_size; } ;
struct TYPE_3__ {int tv_sec; scalar_t__ tv_usec; } ;
struct snmp_client {int retries; int txbuflen; int rxbuflen; int fd; TYPE_2__ engine; scalar_t__ next_reqid; scalar_t__ min_reqid; int max_reqid; scalar_t__ dump_pdus; TYPE_1__ timeout; int cname; int security_model; int write_community; int read_community; int * cport; int * chost; int trans; int version; } ;


 int INT32_MAX ;
 int SNMP_SECMODEL_USM ;
 int SNMP_TRANS_UDP ;
 int SNMP_V2c ;
 int memset (struct snmp_client*,int ,int) ;
 int strcpy (int ,char*) ;

void
snmp_client_init(struct snmp_client *c)
{
 memset(c, 0, sizeof(*c));

 c->version = SNMP_V2c;
 c->trans = SNMP_TRANS_UDP;
 c->chost = ((void*)0);
 c->cport = ((void*)0);

 strcpy(c->read_community, "public");
 strcpy(c->write_community, "private");

 c->security_model = SNMP_SECMODEL_USM;
 strcpy(c->cname, "");

 c->timeout.tv_sec = 3;
 c->timeout.tv_usec = 0;
 c->retries = 3;
 c->dump_pdus = 0;
 c->txbuflen = c->rxbuflen = 10000;

 c->fd = -1;

 c->max_reqid = INT32_MAX;
 c->min_reqid = 0;
 c->next_reqid = 0;

 c->engine.max_msg_size = 1500;
}
