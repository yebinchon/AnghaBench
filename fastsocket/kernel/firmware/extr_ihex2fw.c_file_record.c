
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ihex_binrec {scalar_t__ addr; struct ihex_binrec* next; } ;


 struct ihex_binrec* records ;
 int sort_records ;

__attribute__((used)) static void file_record(struct ihex_binrec *record)
{
 struct ihex_binrec **p = &records;

 while ((*p) && (!sort_records || (*p)->addr < record->addr))
  p = &((*p)->next);

 record->next = *p;
 *p = record;
}
