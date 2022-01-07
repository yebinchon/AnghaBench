
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eurwdt_set_timeout (int ) ;
 int eurwdt_timeout ;

__attribute__((used)) static void eurwdt_ping(void)
{

 eurwdt_set_timeout(eurwdt_timeout);
}
