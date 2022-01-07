
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int dev; } ;


 int device_create_file (int *,int *) ;
 int w1_therm_attr ;

__attribute__((used)) static int w1_therm_add_slave(struct w1_slave *sl)
{
 return device_create_file(&sl->dev, &w1_therm_attr);
}
