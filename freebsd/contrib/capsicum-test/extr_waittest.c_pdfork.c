
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_pdfork ;
 int syscall (int ,int*,int) ;

int pdfork(int *fd, int flags) {
  return syscall(__NR_pdfork, fd, flags);
}
