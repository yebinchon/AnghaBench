
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ can_dir ;
 int remove_proc_entry (char const*,scalar_t__) ;

__attribute__((used)) static void can_remove_proc_readentry(const char *name)
{
 if (can_dir)
  remove_proc_entry(name, can_dir);
}
