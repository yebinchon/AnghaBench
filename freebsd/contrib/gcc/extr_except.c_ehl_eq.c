
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehl_map_entry {scalar_t__ label; } ;



__attribute__((used)) static int
ehl_eq (const void *pentry, const void *pdata)
{
  struct ehl_map_entry *entry = (struct ehl_map_entry *) pentry;
  struct ehl_map_entry *data = (struct ehl_map_entry *) pdata;

  return entry->label == data->label;
}
