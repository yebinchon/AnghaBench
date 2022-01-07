
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;





 char const* hstrerror (int) ;
 char* stuffbuffer (char*,int ,char const*) ;

__attribute__((used)) static char *apr_os_strerror(char* buf, apr_size_t bufsize, int err)
{



    const char *msg;

    switch(err) {
    case 130:
        msg = "Unknown host";
        break;

    case 128:

    case 129:

        msg = "No address for host";
        break;





    default:
        msg = "Unrecognized resolver error";
    }
    return stuffbuffer(buf, bufsize, msg);

}
