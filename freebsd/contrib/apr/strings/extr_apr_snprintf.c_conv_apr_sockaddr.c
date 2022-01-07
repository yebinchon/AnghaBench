
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sin6_addr; } ;
struct TYPE_7__ {TYPE_1__ sin6; } ;
struct TYPE_8__ {scalar_t__ family; TYPE_2__ sa; int addr_str_len; int port; } ;
typedef TYPE_3__ apr_sockaddr_t ;
typedef int apr_size_t ;


 scalar_t__ APR_INET6 ;
 int IN6_IS_ADDR_V4MAPPED (int *) ;
 char* NUM_BUF_SIZE ;
 int TRUE ;
 scalar_t__ apr_sockaddr_ip_getbuf (char*,int ,TYPE_3__*) ;
 char* conv_10 (int ,int ,int*,char*,int*) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *conv_apr_sockaddr(apr_sockaddr_t *sa, char *buf_end, apr_size_t *len)
{
    char *p = buf_end;
    int is_negative;
    apr_size_t sub_len;
    char *ipaddr_str;

    p = conv_10(sa->port, TRUE, &is_negative, p, &sub_len);
    *--p = ':';
    ipaddr_str = buf_end - NUM_BUF_SIZE;
    if (apr_sockaddr_ip_getbuf(ipaddr_str, sa->addr_str_len, sa)) {


        *--p = '?';
        *len = buf_end - p;
        return p;
    }
    sub_len = strlen(ipaddr_str);
    {
        p -= sub_len;
        memcpy(p, ipaddr_str, sub_len);
    }

    *len = buf_end - p;
    return (p);
}
