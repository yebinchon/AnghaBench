
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zdap_ioctl {int dummy; } ;
struct ifreq {int dummy; } ;


 int set_ioctl (int,struct ifreq*) ;

int read_mem(int sock, struct ifreq *req)
{
    struct zdap_ioctl *zdreq = 0;
    int i;

    if (!set_ioctl(sock, req))
        return -1;
    return 0;
}
