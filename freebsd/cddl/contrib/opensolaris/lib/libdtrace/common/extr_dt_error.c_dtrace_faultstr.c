
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;
const char *
dtrace_faultstr(dtrace_hdl_t *dtp, int fault)
{
 int i;

 static const struct {
  int code;
  const char *str;
 } faults[] = {
  { 137, "invalid address" },
  { 136, "invalid alignment" },
  { 133, "illegal operation" },
  { 134, "divide-by-zero" },
  { 130, "out of scratch space" },
  { 132, "invalid kernel access" },
  { 128, "invalid user access" },
  { 129, "tuple stack overflow" },
  { 135, "bad stack" },
  { 131, "library-level fault" },
  { 0, ((void*)0) }
 };

 for (i = 0; faults[i].str != ((void*)0); i++) {
  if (faults[i].code == fault)
   return (faults[i].str);
 }

 return ("unknown fault");
}
