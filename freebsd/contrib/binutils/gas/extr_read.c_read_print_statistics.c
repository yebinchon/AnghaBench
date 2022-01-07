
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int hash_print_statistics (int *,char*,int ) ;
 int po_hash ;

void
read_print_statistics (FILE *file)
{
  hash_print_statistics (file, "pseudo-op table", po_hash);
}
