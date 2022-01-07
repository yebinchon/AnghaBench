
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int dev; } ;


 int device_remove_file (int *,int *) ;
 int w1_therm_attr ;

__attribute__((used)) static void w1_therm_remove_slave(struct w1_slave *sl)
{
 device_remove_file(&sl->dev, &w1_therm_attr);
}
