
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ dtrh_epid; } ;
typedef TYPE_1__ dtrace_rechdr_t ;
typedef int dtrace_epid_t ;
struct TYPE_5__ {size_t dtbd_oldest; size_t dtbd_size; int dtbd_timestamp; scalar_t__ dtbd_data; } ;
typedef TYPE_2__ dtrace_bufdesc_t ;


 scalar_t__ DTRACE_EPIDNONE ;
 int DTRACE_RECORD_LOAD_TIMESTAMP (TYPE_1__*) ;

__attribute__((used)) static uint64_t
dt_buf_oldest(void *elem, void *arg)
{
 dtrace_bufdesc_t *buf = elem;
 size_t offs = buf->dtbd_oldest;

 while (offs < buf->dtbd_size) {
  dtrace_rechdr_t *dtrh =

      (dtrace_rechdr_t *)(buf->dtbd_data + offs);
  if (dtrh->dtrh_epid == DTRACE_EPIDNONE) {
   offs += sizeof (dtrace_epid_t);
  } else {
   return (DTRACE_RECORD_LOAD_TIMESTAMP(dtrh));
  }
 }


 return (buf->dtbd_timestamp);
}
