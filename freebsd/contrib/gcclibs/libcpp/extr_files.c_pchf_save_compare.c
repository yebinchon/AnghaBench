
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pchf_entry {int dummy; } ;


 int memcmp (void const*,void const*,int) ;

__attribute__((used)) static int
pchf_save_compare (const void *e1, const void *e2)
{
  return memcmp (e1, e2, sizeof (struct pchf_entry));
}
