
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_5__ {int offset; } ;
struct ia64_unw_table_entry {TYPE_3__ info; TYPE_1__ end; TYPE_2__ start; } ;
struct ia64_unw_aux_info {int table_len; unsigned char* info; int info_addr; scalar_t__ seg_base; int strtab_size; int strtab; int nsyms; int symtab; struct ia64_unw_table_entry* table; } ;
typedef int stamp ;
typedef int bfd_vma ;


 int ABSADDR (TYPE_3__) ;
 int PREFIX_HEX ;
 scalar_t__ UNW_FLAG_EHANDLER (int) ;
 int UNW_FLAG_MASK ;
 scalar_t__ UNW_FLAG_UHANDLER (int) ;
 int UNW_LENGTH (int) ;
 int UNW_VER (int) ;
 int byte_get (unsigned char*,int) ;
 int eh_addr_size ;
 int find_symbol_for_address (int ,int ,int ,int ,TYPE_2__,char const**,int*) ;
 int fputc (char,int ) ;
 int fputs (char const*,int ) ;
 int print_vma (int ,int ) ;
 int printf (char*,...) ;
 int stdout ;
 unsigned char* unw_decode (unsigned char const*,int,int*) ;

__attribute__((used)) static void
dump_ia64_unwind (struct ia64_unw_aux_info *aux)
{
  struct ia64_unw_table_entry *tp;
  int in_body;

  for (tp = aux->table; tp < aux->table + aux->table_len; ++tp)
    {
      bfd_vma stamp;
      bfd_vma offset;
      const unsigned char *dp;
      const unsigned char *head;
      const char *procname;

      find_symbol_for_address (aux->symtab, aux->nsyms, aux->strtab,
          aux->strtab_size, tp->start, &procname, &offset);

      fputs ("\n<", stdout);

      if (procname)
 {
   fputs (procname, stdout);

   if (offset)
     printf ("+%lx", (unsigned long) offset);
 }

      fputs (">: [", stdout);
      print_vma (tp->start.offset, PREFIX_HEX);
      fputc ('-', stdout);
      print_vma (tp->end.offset, PREFIX_HEX);
      printf ("], info at +0x%lx\n",
       (unsigned long) (tp->info.offset - aux->seg_base));

      head = aux->info + (ABSADDR (tp->info) - aux->info_addr);
      stamp = byte_get ((unsigned char *) head, sizeof (stamp));

      printf ("  v%u, flags=0x%lx (%s%s), len=%lu bytes\n",
       (unsigned) UNW_VER (stamp),
       (unsigned long) ((stamp & UNW_FLAG_MASK) >> 32),
       UNW_FLAG_EHANDLER (stamp) ? " ehandler" : "",
       UNW_FLAG_UHANDLER (stamp) ? " uhandler" : "",
       (unsigned long) (eh_addr_size * UNW_LENGTH (stamp)));

      if (UNW_VER (stamp) != 1)
 {
   printf ("\tUnknown version.\n");
   continue;
 }

      in_body = 0;
      for (dp = head + 8; dp < head + 8 + eh_addr_size * UNW_LENGTH (stamp);)
 dp = unw_decode (dp, in_body, & in_body);
    }
}
