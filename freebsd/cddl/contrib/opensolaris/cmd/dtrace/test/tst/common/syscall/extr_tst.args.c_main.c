
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SYS_mmap ;
 int __syscall (int ,int *,size_t,int,int,int,int ) ;

int
main(int argc, char **argv)
{
 for (;;) {
  (void) __syscall(SYS_mmap, ((void*)0), (size_t)1, 2, 3, -1,
      (off_t)0x12345678);
 }

 return (0);
}
