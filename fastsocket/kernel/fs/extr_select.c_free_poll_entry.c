
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_entry {int filp; int wait; int wait_address; } ;


 int fput (int ) ;
 int remove_wait_queue (int ,int *) ;

__attribute__((used)) static void free_poll_entry(struct poll_table_entry *entry)
{
 remove_wait_queue(entry->wait_address, &entry->wait);
 fput(entry->filp);
}
