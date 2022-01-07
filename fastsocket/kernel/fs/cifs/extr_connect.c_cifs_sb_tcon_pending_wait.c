
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERESTARTSYS ;
 int current ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int
cifs_sb_tcon_pending_wait(void *unused)
{
 schedule();
 return signal_pending(current) ? -ERESTARTSYS : 0;
}
