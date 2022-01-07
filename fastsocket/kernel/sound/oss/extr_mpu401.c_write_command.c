
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int base; } ;


 int COMDPORT (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static inline void write_command(struct mpu_config *devc, unsigned char cmd)
{
 outb(cmd, COMDPORT(devc->base));
}
