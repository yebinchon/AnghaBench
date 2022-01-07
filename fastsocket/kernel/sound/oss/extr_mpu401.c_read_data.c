
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int base; } ;


 int DATAPORT (int ) ;
 int inb (int ) ;

__attribute__((used)) static inline int read_data(struct mpu_config *devc)
{
 return inb(DATAPORT(devc->base));
}
