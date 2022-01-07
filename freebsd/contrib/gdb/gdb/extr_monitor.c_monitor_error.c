
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 char* alloca (int) ;
 int error (char*,char*,char*,char*,char*,...) ;
 int monitor_printable_string (char*,char*,int) ;
 char* paddr_nz (int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
monitor_error (char *function, char *message,
        CORE_ADDR memaddr, int len, char *string, int final_char)
{
  int real_len = (len == 0 && string != (char *) 0) ? strlen (string) : len;
  char *safe_string = alloca ((real_len * 4) + 1);
  monitor_printable_string (safe_string, string, real_len);

  if (final_char)
    error ("%s (0x%s): %s: %s%c", function, paddr_nz (memaddr), message, safe_string, final_char);
  else
    error ("%s (0x%s): %s: %s", function, paddr_nz (memaddr), message, safe_string);
}
