
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int define_config (char*,int ) ;
 scalar_t__ len_config ;

__attribute__((used)) static void clear_config(void)
{
 len_config = 0;
 define_config("", 0);
}
