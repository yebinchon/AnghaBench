
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9aclc_soc_device {int aclc_pdev; } ;
struct txx9aclc_plat_drvdata {int dummy; } ;


 struct txx9aclc_plat_drvdata* platform_get_drvdata (int ) ;

__attribute__((used)) static inline struct txx9aclc_plat_drvdata *txx9aclc_get_plat_drvdata(
 struct txx9aclc_soc_device *sdev)
{
 return platform_get_drvdata(sdev->aclc_pdev);
}
