
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smd_irq_handler (int ,int *) ;

__attribute__((used)) static void smd_fake_irq_handler(unsigned long arg)
{
 smd_irq_handler(0, ((void*)0));
}
