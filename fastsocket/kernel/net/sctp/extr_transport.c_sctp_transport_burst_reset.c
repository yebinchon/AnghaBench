
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {scalar_t__ burst_limited; scalar_t__ cwnd; } ;



void sctp_transport_burst_reset(struct sctp_transport *t)
{
 if (t->burst_limited) {
  t->cwnd = t->burst_limited;
  t->burst_limited = 0;
 }
}
