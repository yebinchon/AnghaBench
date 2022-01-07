
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int dummy; } ;


 int EOPNOTSUPP ;

int iwctl_giwnwid(struct net_device *dev,
             struct iw_request_info *info,
    struct iw_param *wrq,
                   char *extra)
{




  return -EOPNOTSUPP;
}
