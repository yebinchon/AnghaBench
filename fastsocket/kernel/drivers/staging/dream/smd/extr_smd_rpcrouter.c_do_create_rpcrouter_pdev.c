
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int platform_device_register (int *) ;
 int rpcrouter_pdev ;

__attribute__((used)) static void do_create_rpcrouter_pdev(struct work_struct *work)
{
 platform_device_register(&rpcrouter_pdev);
}
