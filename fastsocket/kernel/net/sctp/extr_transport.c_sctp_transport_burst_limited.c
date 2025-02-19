
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sctp_transport {scalar_t__ cwnd; scalar_t__ flight_size; scalar_t__ burst_limited; struct sctp_association* asoc; } ;
struct sctp_association {int max_burst; int pathmtu; } ;



void sctp_transport_burst_limited(struct sctp_transport *t)
{
 struct sctp_association *asoc = t->asoc;
 u32 old_cwnd = t->cwnd;
 u32 max_burst_bytes;

 if (t->burst_limited)
  return;

 max_burst_bytes = t->flight_size + (asoc->max_burst * asoc->pathmtu);
 if (max_burst_bytes < old_cwnd) {
  t->cwnd = max_burst_bytes;
  t->burst_limited = old_cwnd;
 }
}
