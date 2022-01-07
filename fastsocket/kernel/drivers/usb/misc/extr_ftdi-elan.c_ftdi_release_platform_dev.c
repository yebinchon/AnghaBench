
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * parent; } ;



__attribute__((used)) static void ftdi_release_platform_dev(struct device *dev)
{
        dev->parent = ((void*)0);
}
