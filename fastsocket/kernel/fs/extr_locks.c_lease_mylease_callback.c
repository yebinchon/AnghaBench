
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_file; } ;



__attribute__((used)) static int lease_mylease_callback(struct file_lock *fl, struct file_lock *try)
{
 return fl->fl_file == try->fl_file;
}
