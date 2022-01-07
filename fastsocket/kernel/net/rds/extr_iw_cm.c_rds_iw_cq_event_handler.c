
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_event {int event; } ;


 int rdsdebug (char*,int ,void*) ;

__attribute__((used)) static void rds_iw_cq_event_handler(struct ib_event *event, void *data)
{
 rdsdebug("event %u data %p\n", event->event, data);
}
