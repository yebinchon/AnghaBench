
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
struct svc_req {int dummy; } ;
typedef int amq_map_info_list ;


 int map_list_head ;

amq_map_info_list *
amqproc_getmapinfo_1_svc(voidp argp, struct svc_req *rqstp)
{
  return (amq_map_info_list *) ((void *)&map_list_head);
}
