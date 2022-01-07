
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_isdst; scalar_t__ __tm_gmtoff; scalar_t__ tm_gmtoff; } ;
typedef scalar_t__ apr_int32_t ;


 scalar_t__ daylightOffset ;
 scalar_t__ daylightOnOff ;
 scalar_t__ server_gmt_offset ;

__attribute__((used)) static apr_int32_t get_offset(struct tm *tm)
{
    if (tm->tm_isdst)
        return server_gmt_offset + 3600;

    return server_gmt_offset;

}
