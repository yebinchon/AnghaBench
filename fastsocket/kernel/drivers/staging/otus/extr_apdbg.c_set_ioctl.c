
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int dummy; } ;


 int ZDAPIOCTL ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 char* prgname ;
 int stderr ;
 char* strerror (int ) ;

int set_ioctl(int sock, struct ifreq *req)
{
    if (ioctl(sock, ZDAPIOCTL, req) < 0) {
        fprintf(stderr, "%s: ioctl(SIOCGIFMAP): %s\n",
                prgname, strerror(errno));
        return -1;
    }

    return 0;
}
