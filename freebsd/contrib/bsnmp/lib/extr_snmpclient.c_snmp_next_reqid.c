
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_client {scalar_t__ next_reqid; scalar_t__ max_reqid; scalar_t__ min_reqid; } ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static int32_t
snmp_next_reqid(struct snmp_client * c)
{
 int32_t i;

 i = c->next_reqid;
 if (c->next_reqid >= c->max_reqid)
  c->next_reqid = c->min_reqid;
 else
  c->next_reqid++;
 return (i);
}
