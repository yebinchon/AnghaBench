
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_11__ ;


struct partial_symtab {int dummy; } ;
struct partial_symbol {int dummy; } ;
struct TYPE_24__ {struct partial_symbol** next; struct partial_symbol** list; } ;
struct TYPE_23__ {struct partial_symbol** next; struct partial_symbol** list; } ;
struct objfile {TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; } ;
struct dntt_type_block {int dummy; } ;
typedef TYPE_3__* quick_procedure_entry_ptr ;
struct TYPE_25__ {int adrEnd; scalar_t__ sbProc; } ;
typedef TYPE_3__ quick_procedure_entry ;
typedef TYPE_5__* quick_module_entry_ptr ;
struct TYPE_26__ {scalar_t__ sbMod; } ;
typedef TYPE_5__ quick_module_entry ;
typedef TYPE_7__* quick_file_entry_ptr ;
struct TYPE_27__ {scalar_t__ sbFile; } ;
typedef TYPE_7__ quick_file_entry ;
typedef TYPE_9__* quick_class_entry_ptr ;
struct TYPE_28__ {scalar_t__ sbClass; } ;
typedef TYPE_9__ quick_class_entry ;
struct TYPE_22__ {int end; } ;
struct TYPE_21__ {int pd_entries; int fd_entries; int md_entries; int cd_entries; int globals; } ;
typedef TYPE_11__* PXDB_header_ptr ;
typedef int CORE_ADDR ;
typedef int B_TYPE ;


 int B_BYTES (int) ;
 int B_CLRALL (int *,int) ;
 int CURR_FILE_END ;
 int CURR_FILE_ISYM ;
 int CURR_FILE_START ;
 int CURR_MODULE_END ;
 int CURR_MODULE_ISYM ;
 int CURR_MODULE_START ;
 int CURR_PROC_ISYM ;
 int CURR_PROC_START ;
 scalar_t__ FILE_END (int) ;
 int FILE_START (int) ;
 int HP_DEMANGLING_STYLE_STRING ;
 int LNTT_SYMCOUNT (struct objfile*) ;
 int MODULE_START (int) ;
 scalar_t__ PROC_END (int) ;
 scalar_t__ PROC_START (int) ;
 int TELL_OBJFILE ;
 scalar_t__ VALID_CLASS (int) ;
 scalar_t__ VALID_CURR_FILE ;
 scalar_t__ VALID_CURR_MODULE ;
 scalar_t__ VALID_CURR_PROC ;
 scalar_t__ VALID_FILE (int) ;
 scalar_t__ VALID_MODULE (int) ;
 scalar_t__ VALID_PROC (int) ;
 int clear_pst_syms () ;
 scalar_t__ current_demangling_style ;
 scalar_t__ edg_demangling ;
 int find_next_file_isym (int,TYPE_7__*,int,TYPE_11__*) ;
 int find_next_module_isym (int,TYPE_5__*,int,TYPE_11__*) ;
 int find_next_proc_isym (int,TYPE_3__*,int,TYPE_11__*) ;
 int find_next_pst_start (int) ;
 struct partial_symtab* hpread_end_psymtab (struct partial_symtab*,int *,int ,int,int,int *,int ) ;
 struct partial_symtab* hpread_start_psymtab (struct objfile*,char*,int,int,struct partial_symbol**,struct partial_symbol**) ;
 int init_pst_syms () ;
 int max (int,int) ;
 int min (int,int) ;
 int paddr_nz (int) ;
 int printf (char*,...) ;
 TYPE_13__* pst_syms_array ;
 int pst_syms_count ;
 int record_pst_syms (int,int) ;
 int scan_procs (int*,TYPE_3__*,int,int,int,struct partial_symtab*,char*,struct objfile*) ;
 int set_demangling_style (int ) ;
 scalar_t__ told_objfile ;
 int warning (char*,...) ;
 int xfree (int *) ;
 int * xmalloc (int ) ;

__attribute__((used)) static int
hpread_quick_traverse (struct objfile *objfile, char *gntt_bits,
         char *vt_bits, PXDB_header_ptr pxdb_header_p)
{
  struct partial_symtab *pst;

  char *addr;

  quick_procedure_entry *qPD;
  quick_file_entry *qFD;
  quick_module_entry *qMD;
  quick_class_entry *qCD;

  int idx;
  int i;
  CORE_ADDR start_adr;
  CORE_ADDR end_adr;
  CORE_ADDR next_mod_adr;
  int curr_pd;
  int curr_fd;
  int curr_md;
  int start_sym;
  int end_sym;
  int max_LNTT_sym_index;
  int syms_in_pst;
  B_TYPE *class_entered;

  struct partial_symbol **global_syms;
  struct partial_symbol **static_syms;
  pst = (struct partial_symtab *) 0;


  init_pst_syms ();
  told_objfile = 0;



  if (current_demangling_style != edg_demangling)
    {

      set_demangling_style (HP_DEMANGLING_STYLE_STRING);
    }




  addr = gntt_bits;

  qPD = (quick_procedure_entry_ptr) addr;
  addr += pxdb_header_p->pd_entries * sizeof (quick_procedure_entry);
  qFD = (quick_file_entry_ptr) addr;
  addr += pxdb_header_p->fd_entries * sizeof (quick_file_entry);
  qMD = (quick_module_entry_ptr) addr;
  addr += pxdb_header_p->md_entries * sizeof (quick_module_entry);
  qCD = (quick_class_entry_ptr) addr;
  addr += pxdb_header_p->cd_entries * sizeof (quick_class_entry);
  max_LNTT_sym_index = LNTT_SYMCOUNT (objfile);







  curr_pd = 0;
  curr_fd = 0;
  curr_md = 0;

  start_adr = 0;
  end_adr = 0;

  start_sym = 0;
  end_sym = 0;

  syms_in_pst = 0;



  global_syms = objfile->global_psymbols.list;
  static_syms = objfile->static_psymbols.list;
  while (VALID_CURR_PROC && (CURR_PROC_START == 0))
    curr_pd++;
  while (VALID_CURR_FILE || VALID_CURR_MODULE)
    {

      char *mod_name_string = ((void*)0);
      char *full_name_string;





      if (VALID_CURR_MODULE && (CURR_MODULE_START == -1) && (CURR_MODULE_END == 0))
 {

   mod_name_string = &vt_bits[(long) qMD[curr_md].sbMod];
   pst = hpread_start_psymtab (objfile,
          mod_name_string,
          CURR_MODULE_START,
         (CURR_MODULE_ISYM * sizeof (struct dntt_type_block)),

          global_syms,
          static_syms);

   pst = hpread_end_psymtab (pst,
        ((void*)0),
        0,
      end_sym * sizeof (struct dntt_type_block),



        0,
        ((void*)0),
        0);

   global_syms = objfile->global_psymbols.next;
   static_syms = objfile->static_psymbols.next;

   curr_md++;
 }
      else if (VALID_CURR_MODULE &&
        ((CURR_MODULE_START == 0) || (CURR_MODULE_START == -1) ||
  (CURR_MODULE_END == 0) || (CURR_MODULE_END == -1)))
 {
   TELL_OBJFILE;
   warning ("Module \"%s\" [0x%s] has non-standard addresses.  It starts at 0x%s, ends at 0x%s, and will be skipped.",
     mod_name_string, paddr_nz (curr_md), paddr_nz (start_adr), paddr_nz (end_adr));

   curr_md++;
 }
      else
 {



   if (VALID_CURR_FILE ? (VALID_CURR_MODULE ? (CURR_FILE_END < CURR_MODULE_START) : 1) : 0)
     {



       full_name_string = &vt_bits[(long) qFD[curr_fd].sbFile];
       start_adr = CURR_FILE_START;
       end_adr = CURR_FILE_END;
       start_sym = CURR_FILE_ISYM;







       if (CURR_PROC_START < start_adr)
  {
    TELL_OBJFILE;
    warning ("Found procedure \"%s\" [0x%x] that is not in any file or module.",
      &vt_bits[(long) qPD[curr_pd].sbProc], curr_pd);
    start_adr = CURR_PROC_START;
    if (CURR_PROC_ISYM < start_sym)
      start_sym = CURR_PROC_ISYM;
  }





       if (VALID_FILE (curr_fd + 1) && (FILE_START (curr_fd + 1) <= end_adr))
  {
    TELL_OBJFILE;
    warning ("File \"%s\" [0x%x] has ending address after starting address of next file; adjusting ending address down.",
      full_name_string, curr_fd);
    end_adr = FILE_START (curr_fd + 1) - 1;
  }
       if (VALID_MODULE (curr_md) && (CURR_MODULE_START <= end_adr))
  {
    TELL_OBJFILE;
    warning ("File \"%s\" [0x%x] has ending address after starting address of next module; adjusting ending address down.",
      full_name_string, curr_fd);
    end_adr = CURR_MODULE_START - 1;
  }
       pst = hpread_start_psymtab (objfile,
       full_name_string,
       start_adr,
         (start_sym * sizeof (struct dntt_type_block)),

       global_syms,
       static_syms);


       class_entered = xmalloc (B_BYTES (pxdb_header_p->cd_entries));
       B_CLRALL (class_entered, pxdb_header_p->cd_entries);




       syms_in_pst = scan_procs (&curr_pd, qPD, pxdb_header_p->pd_entries,
     start_adr, end_adr, pst, vt_bits, objfile);



       end_sym = 0;

       if (pst_syms_count && start_sym < pst_syms_array[pst_syms_count - 1].end)
  {
    end_sym = find_next_pst_start (start_sym);
  }

       if (!end_sym)
  {
    int next_file_isym = find_next_file_isym (start_sym, qFD, curr_fd + 1, pxdb_header_p);
    int next_module_isym = find_next_module_isym (start_sym, qMD, curr_md, pxdb_header_p);
    int next_proc_isym = find_next_proc_isym (start_sym, qPD, curr_pd, pxdb_header_p);

    if (next_file_isym && next_module_isym)
      {

        end_sym = min (next_file_isym, next_module_isym);
      }
    else
      {

        end_sym = max (next_file_isym, next_module_isym);
      }


    if (!end_sym)
      end_sym = next_proc_isym;
    else
      end_sym = min (end_sym, next_proc_isym);
  }


       if (!end_sym)
  end_sym = pxdb_header_p->globals;
       pst = hpread_end_psymtab (pst,
     ((void*)0),
     0,
      end_sym * sizeof (struct dntt_type_block),



     end_adr,
     ((void*)0),
     0);

       record_pst_syms (start_sym, end_sym);

       if (((void*)0) == pst)
  warning ("No symbols in psymtab for file \"%s\" [0x%x].", full_name_string, curr_fd);
       global_syms = objfile->global_psymbols.next;
       static_syms = objfile->static_psymbols.next;
       xfree (class_entered);

       curr_fd++;
     }
   else
     {


       mod_name_string = &vt_bits[(long) qMD[curr_md].sbMod];





       start_adr = CURR_MODULE_START;
       if (VALID_CURR_FILE)
  {
    if (CURR_FILE_START < CURR_MODULE_START)
      {
        TELL_OBJFILE;
        warning ("File \"%s\" [0x%x] crosses beginning of module \"%s\".",
          &vt_bits[(long) qFD[curr_fd].sbFile],
          curr_fd, mod_name_string);

        start_adr = CURR_FILE_START;
      }
  }


       start_sym = CURR_MODULE_ISYM;
       if (VALID_CURR_FILE && (CURR_FILE_ISYM < CURR_MODULE_ISYM))
  start_sym = CURR_FILE_ISYM;
       end_adr = CURR_MODULE_END;

       if (VALID_CURR_FILE)
  {
    while (VALID_CURR_FILE && (CURR_FILE_START < end_adr))
      {






        if (CURR_FILE_END > end_adr)
   {
     TELL_OBJFILE;
     warning ("File \"%s\" [0x%x] crosses end of module \"%s\".",
       &vt_bits[(long) qFD[curr_fd].sbFile],
       curr_fd, mod_name_string);
     end_adr = CURR_FILE_END;
   }
        curr_fd++;
      }
    curr_fd--;
  }





       if (VALID_MODULE (curr_md + 1) && (MODULE_START (curr_md + 1) <= end_adr))
  {
    TELL_OBJFILE;
    warning ("Module \"%s\" [0x%x] has ending address after starting address of next module; adjusting ending address down.",
      mod_name_string, curr_md);
    end_adr = MODULE_START (curr_md + 1) - 1;
  }
       if (VALID_FILE (curr_fd + 1) && (FILE_START (curr_fd + 1) <= end_adr))
  {
    TELL_OBJFILE;
    warning ("Module \"%s\" [0x%x] has ending address after starting address of next file; adjusting ending address down.",
      mod_name_string, curr_md);
    end_adr = FILE_START (curr_fd + 1) - 1;
  }
       if (VALID_CURR_FILE)
  full_name_string = &vt_bits[(long) qFD[curr_fd].sbFile];
       else
  full_name_string = mod_name_string;







       if (CURR_PROC_START < start_adr)
  {
    TELL_OBJFILE;
    warning ("Found procedure \"%s\" [0x%x] that is not in any file or module.",
      &vt_bits[(long) qPD[curr_pd].sbProc], curr_pd);
    start_adr = CURR_PROC_START;
    if (CURR_PROC_ISYM < start_sym)
      start_sym = CURR_PROC_ISYM;
  }
       pst = hpread_start_psymtab (objfile,
       full_name_string,
       start_adr,
         (start_sym * sizeof (struct dntt_type_block)),

       global_syms,
       static_syms);


       class_entered = xmalloc (B_BYTES (pxdb_header_p->cd_entries));
       B_CLRALL (class_entered, pxdb_header_p->cd_entries);




       syms_in_pst = scan_procs (&curr_pd, qPD, pxdb_header_p->pd_entries,
     start_adr, end_adr, pst, vt_bits, objfile);



       end_sym = 0;

       if (pst_syms_count && start_sym < pst_syms_array[pst_syms_count - 1].end)
  {
    end_sym = find_next_pst_start (start_sym);
  }

       if (!end_sym)
  {
    int next_file_isym = find_next_file_isym (start_sym, qFD, curr_fd + 1, pxdb_header_p);
    int next_module_isym = find_next_module_isym (start_sym, qMD, curr_md + 1, pxdb_header_p);
    int next_proc_isym = find_next_proc_isym (start_sym, qPD, curr_pd, pxdb_header_p);

    if (next_file_isym && next_module_isym)
      {

        end_sym = min (next_file_isym, next_module_isym);
      }
    else
      {

        end_sym = max (next_file_isym, next_module_isym);
      }


    if (!end_sym)
      end_sym = next_proc_isym;
    else
      end_sym = min (end_sym, next_proc_isym);
  }


       if (!end_sym)
  end_sym = pxdb_header_p->globals;
       pst = hpread_end_psymtab (pst,
     ((void*)0),
     0,
      end_sym * sizeof (struct dntt_type_block),



     end_adr,
     ((void*)0),
     0);

       record_pst_syms (start_sym, end_sym);

       if (((void*)0) == pst)
  warning ("No symbols in psymtab for module \"%s\" [0x%x].", mod_name_string, curr_md);
       global_syms = objfile->global_psymbols.next;
       static_syms = objfile->static_psymbols.next;
       xfree (class_entered);

       curr_md++;
       curr_fd++;
     }
 }
    }



  if (VALID_CURR_PROC)
    {
      start_adr = CURR_PROC_START;
      end_adr = qPD[pxdb_header_p->pd_entries - 1].adrEnd;
      TELL_OBJFILE;
      warning ("Found functions beyond end of all files and modules [0x%x].", curr_pd);







      pst = hpread_start_psymtab (objfile,
      "orphans",
      start_adr,
    (CURR_PROC_ISYM * sizeof (struct dntt_type_block)),

      global_syms,
      static_syms);

      scan_procs (&curr_pd, qPD, pxdb_header_p->pd_entries,
    start_adr, end_adr, pst, vt_bits, objfile);

      pst = hpread_end_psymtab (pst,
    ((void*)0),
    0,
     pxdb_header_p->globals * sizeof (struct dntt_type_block),



    end_adr,
    ((void*)0),
    0);
    }
  clear_pst_syms ();

  return 1;

}
