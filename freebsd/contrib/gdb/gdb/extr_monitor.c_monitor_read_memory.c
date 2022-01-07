
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct re_registers {int * end; } ;
struct TYPE_3__ {char* term_cmd; char* resp_delim; scalar_t__ term; int cmdb; } ;
struct TYPE_4__ {int flags; TYPE_1__ getmem; } ;
typedef int CORE_ADDR ;


 int ADDR_BITS_REMOVE (int) ;
 int MO_ADDR_BITS_REMOVE ;
 int MO_EXACT_DUMPADDR ;
 int MO_GETMEM_16_BOUNDARY ;
 int MO_GETMEM_NEEDS_RANGE ;
 int MO_GETMEM_READ_SINGLE ;
 TYPE_2__* current_monitor ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,...) ;
 int fromhex (char) ;
 int gdb_stdlog ;
 int getmem_resp_delim_pattern ;
 scalar_t__ isxdigit (char) ;
 int memset (struct re_registers*,int ,int) ;
 int min (int,int) ;
 int monitor_debug (char*,...) ;
 scalar_t__ monitor_debug_p ;
 int monitor_desc ;
 int monitor_error (char*,char*,int,int,char*,int ) ;
 int monitor_expect (scalar_t__,char*,int) ;
 int monitor_expect_prompt (char*,int) ;
 int monitor_printf (int ,int,...) ;
 int monitor_read_memory_single (int,char*,int) ;
 int paddr_nz (int) ;
 int re_search (int *,char*,int,int ,int,struct re_registers*) ;
 scalar_t__ remote_debug ;
 int serial_write (int ,char*,int) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 unsigned int strtoul (char*,char**,int) ;

__attribute__((used)) static int
monitor_read_memory (CORE_ADDR memaddr, char *myaddr, int len)
{
  unsigned int val;
  char buf[512];
  char *p, *p1;
  int resp_len;
  int i;
  CORE_ADDR dumpaddr;

  if (len <= 0)
    {
      monitor_debug ("Zero length call to monitor_read_memory\n");
      return 0;
    }

  monitor_debug ("MON read block ta(%s) ha(%lx) %d\n",
   paddr_nz (memaddr), (long) myaddr, len);

  if (current_monitor->flags & MO_ADDR_BITS_REMOVE)
    memaddr = ADDR_BITS_REMOVE (memaddr);

  if (current_monitor->flags & MO_GETMEM_READ_SINGLE)
    return monitor_read_memory_single (memaddr, myaddr, len);

  len = min (len, 16);






  dumpaddr = (current_monitor->flags & MO_EXACT_DUMPADDR)
    ? memaddr : memaddr & ~0x0f;


  if (((memaddr ^ (memaddr + len - 1)) & ~0xf) != 0)
    len = ((memaddr + len) & ~0xf) - memaddr;



  if (current_monitor->flags & MO_GETMEM_NEEDS_RANGE)
    monitor_printf (current_monitor->getmem.cmdb, memaddr, memaddr + len);
  else if (current_monitor->flags & MO_GETMEM_16_BOUNDARY)
    monitor_printf (current_monitor->getmem.cmdb, dumpaddr);
  else
    monitor_printf (current_monitor->getmem.cmdb, memaddr, len);






  if (current_monitor->getmem.term)
    {
      resp_len = monitor_expect (current_monitor->getmem.term, buf, sizeof buf);

      if (resp_len <= 0)
 monitor_error ("monitor_read_memory",
         "excessive response from monitor",
         memaddr, resp_len, buf, 0);

      if (current_monitor->getmem.term_cmd)
 {
   serial_write (monitor_desc, current_monitor->getmem.term_cmd,
   strlen (current_monitor->getmem.term_cmd));
   monitor_expect_prompt (((void*)0), 0);
 }
    }
  else
    resp_len = monitor_expect_prompt (buf, sizeof buf);

  p = buf;





  if (current_monitor->getmem.resp_delim)
    {
      int retval, tmp;
      struct re_registers resp_strings;
      monitor_debug ("MON getmem.resp_delim %s\n", current_monitor->getmem.resp_delim);

      memset (&resp_strings, 0, sizeof (struct re_registers));
      tmp = strlen (p);
      retval = re_search (&getmem_resp_delim_pattern, p, tmp, 0, tmp,
     &resp_strings);

      if (retval < 0)
 monitor_error ("monitor_read_memory",
         "bad response from monitor",
         memaddr, resp_len, buf, 0);

      p += resp_strings.end[0];
    }
  monitor_debug ("MON scanning  %d ,%lx '%s'\n", len, (long) p, p);
  if (current_monitor->flags & MO_GETMEM_16_BOUNDARY)
    {
      char c;
      int fetched = 0;
      i = len;
      c = *p;


      while (!(c == '\000' || c == '\n' || c == '\r') && i > 0)
 {
   if (isxdigit (c))
     {
       if ((dumpaddr >= memaddr) && (i > 0))
  {
    val = fromhex (c) * 16 + fromhex (*(p + 1));
    *myaddr++ = val;
    if (monitor_debug_p || remote_debug)
      fprintf_unfiltered (gdb_stdlog, "[%02x]", val);
    --i;
    fetched++;
  }
       ++dumpaddr;
       ++p;
     }
   ++p;
   c = *p;
 }
      if (fetched == 0)
 error ("Failed to read via monitor");
      if (monitor_debug_p || remote_debug)
 fprintf_unfiltered (gdb_stdlog, "\n");
      return fetched;
    }
  monitor_debug ("MON scanning bytes\n");

  for (i = len; i > 0; i--)
    {


      while (1)
 {
   if (isxdigit (*p))
     break;

   if (*p == '\000' || *p == '\n' || *p == '\r')
     monitor_error ("monitor_read_memory",
      "badly terminated response from monitor",
      memaddr, resp_len, buf, 0);
   p++;
 }

      val = strtoul (p, &p1, 16);

      if (val == 0 && p == p1)
 monitor_error ("monitor_read_memory",
         "bad value from monitor",
         memaddr, resp_len, buf, 0);

      *myaddr++ = val;

      if (i == 1)
 break;

      p = p1;
    }

  return len;
}
