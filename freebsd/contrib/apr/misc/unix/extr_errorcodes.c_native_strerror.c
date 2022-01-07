
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
typedef int apr_size_t ;


 int sprintf (char*,char*,int) ;
 char* strerror (int) ;
 char* stuffbuffer (char*,int ,char const*) ;

__attribute__((used)) static char *native_strerror(apr_status_t statcode, char *buf,
                             apr_size_t bufsize)
{





    const char *err = strerror(statcode);
    if (err) {
        return stuffbuffer(buf, bufsize, err);
    } else {
        return stuffbuffer(buf, bufsize,
                           "APR does not understand this error code");
    }

}
