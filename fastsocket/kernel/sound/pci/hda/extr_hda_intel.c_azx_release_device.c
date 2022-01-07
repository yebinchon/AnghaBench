
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {scalar_t__ opened; } ;



__attribute__((used)) static inline void azx_release_device(struct azx_dev *azx_dev)
{
 azx_dev->opened = 0;
}
