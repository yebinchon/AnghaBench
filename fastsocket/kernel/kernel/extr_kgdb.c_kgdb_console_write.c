
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int atomic_read (int *) ;
 int kgdb_active ;
 int kgdb_connected ;
 int kgdb_msg_write (char const*,unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void kgdb_console_write(struct console *co, const char *s,
   unsigned count)
{
 unsigned long flags;



 if (!kgdb_connected || atomic_read(&kgdb_active) != -1)
  return;

 local_irq_save(flags);
 kgdb_msg_write(s, count);
 local_irq_restore(flags);
}
