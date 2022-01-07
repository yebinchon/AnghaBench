
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_uint64_t ;


 int get_system_time (scalar_t__*) ;

__attribute__((used)) static void get_current_time(apr_uint64_t *timestamp)
{


    apr_uint64_t time_now;
    static apr_uint64_t time_last = 0;
    static apr_uint64_t fudge = 0;

    get_system_time(&time_now);


    if (time_last != time_now) {



        if (time_last + fudge > time_now)
            fudge = time_last + fudge - time_now + 1;
        else
            fudge = 0;
        time_last = time_now;
    }
    else {

        ++fudge;
    }

    *timestamp = time_now + fudge;
}
