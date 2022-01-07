
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int guess ;
typedef int apr_uint32_t ;
typedef int apr_time_t ;
typedef int abts_case ;


 int ABTS_TRUE (int *,int) ;
 int APR_TIME_C (int) ;
 int APR_USEC_PER_SEC ;
 int apr_date_parse_http (char*) ;
 int apr_generate_random_bytes (unsigned char*,int) ;
 int apr_time_now () ;
 int gm_timestr_822 (char*,int) ;
 scalar_t__ lgc (int ) ;
 int* year2secs ;

__attribute__((used)) static void test_date_parse_http(abts_case *tc, void *data)
{
    int year, i;
    apr_time_t guess;
    apr_time_t offset = 0;
    apr_time_t secstodate, newsecs;
    char datestr[50];

    for (year = 1970; year < 2038; ++year) {
        secstodate = year2secs[year - 1970] + offset;
        gm_timestr_822(datestr, secstodate);
        secstodate *= APR_USEC_PER_SEC;
        newsecs = apr_date_parse_http(datestr);
        ABTS_TRUE(tc, secstodate == newsecs);
    }




    guess = apr_time_now() % APR_TIME_C(4294967291);


    for (i = 0; i < 10000; ++i) {
        guess = (time_t)lgc((apr_uint32_t)guess);
        if (guess < 0)
            guess *= -1;
        secstodate = guess + offset;
        gm_timestr_822(datestr, secstodate);
        secstodate *= APR_USEC_PER_SEC;
        newsecs = apr_date_parse_http(datestr);
        ABTS_TRUE(tc, secstodate == newsecs);
    }
}
