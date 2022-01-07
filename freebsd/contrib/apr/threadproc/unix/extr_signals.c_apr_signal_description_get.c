
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APR_NUMSIG ;
 char const** signal_description ;

const char *apr_signal_description_get(int signum)
{
    return
        (signum >= 0 && signum < APR_NUMSIG)
        ? signal_description[signum]
        : "unknown signal (number)";
}
