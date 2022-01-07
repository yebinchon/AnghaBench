
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowarrior {int intr_idx; int read_idx; } ;


 int atomic_read (int *) ;

__attribute__((used)) static int read_index(struct iowarrior *dev)
{
 int intr_idx, read_idx;

 read_idx = atomic_read(&dev->read_idx);
 intr_idx = atomic_read(&dev->intr_idx);

 return (read_idx == intr_idx ? -1 : read_idx);
}
