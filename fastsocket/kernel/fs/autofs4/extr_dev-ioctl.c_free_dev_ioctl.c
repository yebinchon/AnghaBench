
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dev_ioctl {int dummy; } ;


 int kfree (struct autofs_dev_ioctl*) ;

__attribute__((used)) static inline void free_dev_ioctl(struct autofs_dev_ioctl *param)
{
 kfree(param);
 return;
}
