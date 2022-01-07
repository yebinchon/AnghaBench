
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscape_info {int dummy; } ;


 int HOST_CTRL ;
 int PORT (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void host_close(struct sscape_info *devc)
{
 outb((0x03), PORT(HOST_CTRL));
}
