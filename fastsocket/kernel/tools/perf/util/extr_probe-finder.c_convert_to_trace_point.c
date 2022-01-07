
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_point {unsigned long offset; int retprobe; int * symbol; } ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Addr ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 char* dwarf_diename (int *) ;
 scalar_t__ dwarf_entrypc (int *,scalar_t__*) ;
 scalar_t__ dwarf_highpc (int *,scalar_t__*) ;
 int pr_warning (char*,...) ;
 int * strdup (char const*) ;

__attribute__((used)) static int convert_to_trace_point(Dwarf_Die *sp_die, Dwarf_Addr paddr,
      bool retprobe, struct probe_trace_point *tp)
{
 Dwarf_Addr eaddr, highaddr;
 const char *name;


 name = dwarf_diename(sp_die);
 if (name) {
  if (dwarf_entrypc(sp_die, &eaddr) != 0) {
   pr_warning("Failed to get entry address of %s\n",
       dwarf_diename(sp_die));
   return -ENOENT;
  }
  if (dwarf_highpc(sp_die, &highaddr) != 0) {
   pr_warning("Failed to get end address of %s\n",
       dwarf_diename(sp_die));
   return -ENOENT;
  }
  if (paddr > highaddr) {
   pr_warning("Offset specified is greater than size of %s\n",
       dwarf_diename(sp_die));
   return -EINVAL;
  }
  tp->symbol = strdup(name);
  if (tp->symbol == ((void*)0))
   return -ENOMEM;
  tp->offset = (unsigned long)(paddr - eaddr);
 } else

  tp->offset = (unsigned long)paddr;


 if (retprobe) {
  if (eaddr != paddr) {
   pr_warning("Return probe must be on the head of"
       " a real function.\n");
   return -EINVAL;
  }
  tp->retprobe = 1;
 }

 return 0;
}
