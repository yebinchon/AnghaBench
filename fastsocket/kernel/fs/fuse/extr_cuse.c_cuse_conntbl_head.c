
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
typedef int dev_t ;


 size_t CUSE_CONNTBL_LEN ;
 size_t MAJOR (int ) ;
 size_t MINOR (int ) ;
 struct list_head* cuse_conntbl ;

__attribute__((used)) static struct list_head *cuse_conntbl_head(dev_t devt)
{
 return &cuse_conntbl[(MAJOR(devt) + MINOR(devt)) % CUSE_CONNTBL_LEN];
}
