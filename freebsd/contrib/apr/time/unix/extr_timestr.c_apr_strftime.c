
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int __tm_gmtoff; int tm_gmtoff; int tm_isdst; int tm_yday; int tm_wday; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_3__ {int tm_gmtoff; int tm_isdst; int tm_yday; int tm_wday; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
typedef TYPE_1__ apr_time_exp_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_SUCCESS ;
 int memset (struct tm*,int ,int) ;
 int strftime (char*,int ,char const*,struct tm*) ;

apr_status_t apr_strftime(char *s, apr_size_t *retsize, apr_size_t max,
                        const char *format, apr_time_exp_t *xt)
{
    struct tm tm;
    memset(&tm, 0, sizeof tm);
    tm.tm_sec = xt->tm_sec;
    tm.tm_min = xt->tm_min;
    tm.tm_hour = xt->tm_hour;
    tm.tm_mday = xt->tm_mday;
    tm.tm_mon = xt->tm_mon;
    tm.tm_year = xt->tm_year;
    tm.tm_wday = xt->tm_wday;
    tm.tm_yday = xt->tm_yday;
    tm.tm_isdst = xt->tm_isdst;





    (*retsize) = strftime(s, max, format, &tm);
    return APR_SUCCESS;
}
