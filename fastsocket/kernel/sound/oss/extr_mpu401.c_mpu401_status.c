
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int base; } ;


 int STATPORT (int ) ;
 int inb (int ) ;

__attribute__((used)) static inline int mpu401_status(struct mpu_config *devc)
{
 return inb(STATPORT(devc->base));
}
