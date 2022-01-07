
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 int ARRAY_SIZE (int ) ;
 int rds_ib_wc_status_strings ;
 char* rds_str_array (int ,int ,int) ;

char *rds_ib_wc_status_str(enum ib_wc_status status)
{
 return rds_str_array(rds_ib_wc_status_strings,
        ARRAY_SIZE(rds_ib_wc_status_strings), status);
}
