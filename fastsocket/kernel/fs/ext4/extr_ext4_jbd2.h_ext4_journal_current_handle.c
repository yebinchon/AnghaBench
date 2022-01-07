
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;


 int * journal_current_handle () ;

__attribute__((used)) static inline handle_t *ext4_journal_current_handle(void)
{
 return journal_current_handle();
}
