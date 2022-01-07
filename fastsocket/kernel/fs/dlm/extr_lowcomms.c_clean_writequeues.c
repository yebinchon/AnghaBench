
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_one_writequeue ;
 int foreach_conn (int ) ;

__attribute__((used)) static void clean_writequeues(void)
{
 foreach_conn(clean_one_writequeue);
}
