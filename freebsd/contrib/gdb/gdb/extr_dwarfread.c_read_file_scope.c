
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct symtab {int language; } ;
struct TYPE_2__ {scalar_t__ entry_point; scalar_t__ deprecated_entry_file_lowpc; scalar_t__ deprecated_entry_file_highpc; } ;
struct objfile {TYPE_1__ ei; } ;
struct dieinfo {scalar_t__ at_low_pc; scalar_t__ at_high_pc; int die_length; int at_comp_dir; int at_name; int * at_producer; } ;
struct cleanup {int dummy; } ;


 int FT_NUM_MEMBERS ;
 int cu_language ;
 int decode_line_numbers (int ) ;
 int do_cleanups (struct cleanup*) ;
 struct symtab* end_symtab (scalar_t__,struct objfile*,int ) ;
 int free_utypes ;
 struct type** ftypes ;
 int handle_producer (int *) ;
 int lnbase ;
 struct cleanup* make_cleanup (int ,int *) ;
 int memset (struct type**,int ,int) ;
 int numutypes ;
 int process_dies (char*,char*,struct objfile*) ;
 int record_debugformat (char*) ;
 int set_cu_language (struct dieinfo*) ;
 int start_symtab (int ,int ,scalar_t__) ;
 struct type** utypes ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
read_file_scope (struct dieinfo *dip, char *thisdie, char *enddie,
   struct objfile *objfile)
{
  struct cleanup *back_to;
  struct symtab *symtab;

  if (objfile->ei.entry_point >= dip->at_low_pc &&
      objfile->ei.entry_point < dip->at_high_pc)
    {
      objfile->ei.deprecated_entry_file_lowpc = dip->at_low_pc;
      objfile->ei.deprecated_entry_file_highpc = dip->at_high_pc;
    }
  set_cu_language (dip);
  if (dip->at_producer != ((void*)0))
    {
      handle_producer (dip->at_producer);
    }
  numutypes = (enddie - thisdie) / 4;
  utypes = (struct type **) xmalloc (numutypes * sizeof (struct type *));
  back_to = make_cleanup (free_utypes, ((void*)0));
  memset (utypes, 0, numutypes * sizeof (struct type *));
  memset (ftypes, 0, FT_NUM_MEMBERS * sizeof (struct type *));
  start_symtab (dip->at_name, dip->at_comp_dir, dip->at_low_pc);
  record_debugformat ("DWARF 1");
  decode_line_numbers (lnbase);
  process_dies (thisdie + dip->die_length, enddie, objfile);

  symtab = end_symtab (dip->at_high_pc, objfile, 0);
  if (symtab != ((void*)0))
    {
      symtab->language = cu_language;
    }
  do_cleanups (back_to);
}
