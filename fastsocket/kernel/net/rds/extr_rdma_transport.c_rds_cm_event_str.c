
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rdma_cm_event_type { ____Placeholder_rdma_cm_event_type } rdma_cm_event_type ;


 int ARRAY_SIZE (int ) ;
 int rds_cm_event_strings ;
 char* rds_str_array (int ,int ,int) ;

__attribute__((used)) static char *rds_cm_event_str(enum rdma_cm_event_type type)
{
 return rds_str_array(rds_cm_event_strings,
        ARRAY_SIZE(rds_cm_event_strings), type);
}
