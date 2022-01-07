
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ timer; scalar_t__ start_func; scalar_t__ expire_func; scalar_t__ pid; } ;



__attribute__((used)) static int match_entries(struct entry *entry1, struct entry *entry2)
{
 return entry1->timer == entry2->timer &&
        entry1->start_func == entry2->start_func &&
        entry1->expire_func == entry2->expire_func &&
        entry1->pid == entry2->pid;
}
