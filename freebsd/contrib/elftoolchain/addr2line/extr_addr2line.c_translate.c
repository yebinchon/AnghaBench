
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct Func {char* name; int call_line; int call_file; int * inlined_caller; } ;
struct CU {int * srcfiles; int funclist; int nsrcfiles; void* hipc; void* lopc; int off; } ;
typedef int off ;
typedef int demangled ;
typedef int Elf ;
typedef void* Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Off ;
typedef int Dwarf_Line ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Die ;
typedef int Dwarf_Debug ;
typedef void* Dwarf_Addr ;


 int DW_AT_high_pc ;
 int DW_AT_low_pc ;
 int DW_DLA_DIE ;
 int DW_DLV_ERROR ;


 scalar_t__ DW_TAG_compile_unit ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 int ELFCLASSNONE ;
 int EXIT_FAILURE ;
 int HASH_ADD (int ,int ,int ,int,struct CU*) ;
 int HASH_FIND (int ,int ,int *,int,struct CU*) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_INIT (int *) ;
 scalar_t__ base ;
 char* basename (char*) ;
 struct CU* calloc (int,int) ;
 int collect_func (int ,int *,int *,struct CU*) ;
 int culist ;
 scalar_t__ demangle ;
 int dwarf_attrval_unsigned (int *,int ,void**,int *) ;
 int dwarf_dealloc (int ,int *,int ) ;
 int dwarf_dieoffset (int *,int *,int *) ;
 int dwarf_errmsg (int ) ;
 scalar_t__ dwarf_lineaddr (int ,void**,int *) ;
 scalar_t__ dwarf_lineno (int ,void**,int *) ;
 scalar_t__ dwarf_linesrc (int ,char**,int *) ;
 int dwarf_next_cu_header (int ,int *,int *,int *,int *,int *,int *) ;
 int dwarf_siblingof (int ,int *,int **,int *) ;
 scalar_t__ dwarf_srcfiles (int *,int **,int *,int *) ;
 int dwarf_srclines (int *,int **,int*,int *) ;
 int dwarf_tag (int *,scalar_t__*,int *) ;
 int elf_errmsg (int) ;
 int elftc_demangle (char const*,char*,int,int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 scalar_t__ func ;
 int gelf_getclass (int *) ;
 int handle_high_pc (int *,void*,void**) ;
 int hh ;
 scalar_t__ inlines ;
 scalar_t__ pretty_print ;
 scalar_t__ print_addr ;
 int print_inlines (struct CU*,int *,int ,int ) ;
 int printf (char*,char const*,...) ;
 struct Func* search_func (struct CU*,void*) ;
 scalar_t__ section_base ;
 void* strtoull (char const*,int *,int) ;
 void* unknown ;
 int warnx (char*,...) ;

__attribute__((used)) static void
translate(Dwarf_Debug dbg, Elf *e, const char* addrstr)
{
 Dwarf_Die die, ret_die;
 Dwarf_Line *lbuf;
 Dwarf_Error de;
 Dwarf_Half tag;
 Dwarf_Unsigned lopc, hipc, addr, lineno, plineno;
 Dwarf_Signed lcount;
 Dwarf_Addr lineaddr, plineaddr;
 Dwarf_Off off;
 struct CU *cu;
 struct Func *f;
 const char *funcname;
 char *file, *file0, *pfile;
 char demangled[1024];
 int ec, i, ret;

 addr = strtoull(addrstr, ((void*)0), 16);
 addr += section_base;
 lineno = 0;
 file = unknown;
 cu = ((void*)0);
 die = ((void*)0);

 while ((ret = dwarf_next_cu_header(dbg, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     &de)) == 128) {
  die = ((void*)0);
  while (dwarf_siblingof(dbg, die, &ret_die, &de) == 128) {
   if (die != ((void*)0))
    dwarf_dealloc(dbg, die, DW_DLA_DIE);
   die = ret_die;
   if (dwarf_tag(die, &tag, &de) != 128) {
    warnx("dwarf_tag failed: %s",
        dwarf_errmsg(de));
    goto next_cu;
   }


   if (tag == DW_TAG_compile_unit)
    break;
  }
  if (ret_die == ((void*)0)) {
   warnx("could not find DW_TAG_compile_unit die");
   goto next_cu;
  }
  if (dwarf_attrval_unsigned(die, DW_AT_low_pc, &lopc, &de) ==
      128) {
   if (dwarf_attrval_unsigned(die, DW_AT_high_pc, &hipc,
      &de) == 128) {




    if (handle_high_pc(die, lopc, &hipc) !=
        128)
     goto out;
   } else {

    hipc = ~0ULL;
   }





   if (dwarf_dieoffset(die, &off, &de) != 128) {
    warnx("dwarf_dieoffset failed: %s",
        dwarf_errmsg(de));
    goto out;
   }
   HASH_FIND(hh, culist, &off, sizeof(off), cu);
   if (cu == ((void*)0)) {
    if ((cu = calloc(1, sizeof(*cu))) == ((void*)0))
     err(EXIT_FAILURE, "calloc");
    cu->off = off;
    cu->lopc = lopc;
    cu->hipc = hipc;
    STAILQ_INIT(&cu->funclist);
    HASH_ADD(hh, culist, off, sizeof(off), cu);
   }

   if (addr >= lopc && addr < hipc)
    break;
  }

 next_cu:
  if (die != ((void*)0)) {
   dwarf_dealloc(dbg, die, DW_DLA_DIE);
   die = ((void*)0);
  }
 }

 if (ret != 128 || die == ((void*)0))
  goto out;

 switch (dwarf_srclines(die, &lbuf, &lcount, &de)) {
 case 128:
  break;
 case 129:

  goto out;
 default:
  warnx("dwarf_srclines: %s", dwarf_errmsg(de));
  goto out;
 }

 plineaddr = ~0ULL;
 plineno = 0;
 pfile = unknown;
 for (i = 0; i < lcount; i++) {
  if (dwarf_lineaddr(lbuf[i], &lineaddr, &de)) {
   warnx("dwarf_lineaddr: %s", dwarf_errmsg(de));
   goto out;
  }
  if (dwarf_lineno(lbuf[i], &lineno, &de)) {
   warnx("dwarf_lineno: %s", dwarf_errmsg(de));
   goto out;
  }
  if (dwarf_linesrc(lbuf[i], &file0, &de)) {
   warnx("dwarf_linesrc: %s", dwarf_errmsg(de));
  } else
   file = file0;
  if (addr == lineaddr)
   goto out;
  else if (addr < lineaddr && addr > plineaddr) {
   lineno = plineno;
   file = pfile;
   goto out;
  }
  plineaddr = lineaddr;
  plineno = lineno;
  pfile = file;
 }

out:
 f = ((void*)0);
 funcname = ((void*)0);
 if (ret == 128 && (func || inlines) && cu != ((void*)0)) {
  if (cu->srcfiles == ((void*)0))
   if (dwarf_srcfiles(die, &cu->srcfiles, &cu->nsrcfiles,
       &de))
    warnx("dwarf_srcfiles: %s", dwarf_errmsg(de));
  if (STAILQ_EMPTY(&cu->funclist)) {
   collect_func(dbg, die, ((void*)0), cu);
   die = ((void*)0);
  }
  f = search_func(cu, addr);
  if (f != ((void*)0))
   funcname = f->name;
 }

 if (print_addr) {
  if ((ec = gelf_getclass(e)) == ELFCLASSNONE) {
   warnx("gelf_getclass failed: %s", elf_errmsg(-1));
   ec = ELFCLASS64;
  }
  if (ec == ELFCLASS32) {
   if (pretty_print)
    printf("0x%08jx: ", (uintmax_t) addr);
   else
    printf("0x%08jx\n", (uintmax_t) addr);
  } else {
   if (pretty_print)
    printf("0x%016jx: ", (uintmax_t) addr);
   else
    printf("0x%016jx\n", (uintmax_t) addr);
  }
 }

 if (func) {
  if (funcname == ((void*)0))
   funcname = unknown;
  if (demangle && !elftc_demangle(funcname, demangled,
      sizeof(demangled), 0)) {
   if (pretty_print)
    printf("%s at ", demangled);
   else
    printf("%s\n", demangled);
  } else {
   if (pretty_print)
    printf("%s at ", funcname);
   else
    printf("%s\n", funcname);
  }
 }

 (void) printf("%s:%ju\n", base ? basename(file) : file,
     (uintmax_t) lineno);

 if (ret == 128 && inlines && cu != ((void*)0) &&
     cu->srcfiles != ((void*)0) && f != ((void*)0) && f->inlined_caller != ((void*)0))
  print_inlines(cu, f->inlined_caller, f->call_file,
      f->call_line);

 if (die != ((void*)0))
  dwarf_dealloc(dbg, die, DW_DLA_DIE);





 while (ret != 129) {
  if (ret == DW_DLV_ERROR)
   errx(EXIT_FAILURE, "dwarf_next_cu_header: %s",
       dwarf_errmsg(de));
  ret = dwarf_next_cu_header(dbg, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      &de);
 }
}
