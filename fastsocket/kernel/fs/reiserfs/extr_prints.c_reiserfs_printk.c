
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_reiserfs_warning (char const*) ;
 int error_buf ;
 int printk (int ) ;

__attribute__((used)) static void reiserfs_printk(const char *fmt, ...)
{
 do_reiserfs_warning(fmt);
 printk(error_buf);
}
