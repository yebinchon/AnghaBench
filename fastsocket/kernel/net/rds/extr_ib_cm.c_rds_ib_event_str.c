
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int ARRAY_SIZE (int ) ;
 int rds_ib_event_type_strings ;
 char* rds_str_array (int ,int ,int) ;

__attribute__((used)) static char *rds_ib_event_str(enum ib_event_type type)
{
 return rds_str_array(rds_ib_event_type_strings,
        ARRAY_SIZE(rds_ib_event_type_strings), type);
}
