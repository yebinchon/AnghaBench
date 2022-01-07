
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int strcpy (char*,char*) ;

int iwctl_giwname(struct net_device *dev,
    struct iw_request_info *info,
    char *wrq,
    char *extra)
{
 strcpy(wrq, "802.11-a/b/g");
 return 0;
}
