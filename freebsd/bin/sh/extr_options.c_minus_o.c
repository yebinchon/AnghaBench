
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOPTS ;
 int error (char*,char*) ;
 scalar_t__ memcmp (unsigned char const*,char*,size_t) ;
 unsigned char* optname ;
 scalar_t__* optval ;
 int out1fmt (char*,...) ;
 int out1str (char*) ;
 int setoptionbyindex (int,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
minus_o(char *name, int val)
{
 int i;
 const unsigned char *on;
 size_t len;

 if (name == ((void*)0)) {
  if (val) {

   out1str("Current option settings\n");
   for (i = 0, on = optname; i < NOPTS; i++, on += *on + 1)
    out1fmt("%-16.*s%s\n", *on, on + 1,
     optval[i] ? "on" : "off");
  } else {

   for (i = 0, on = optname; i < NOPTS; i++, on += *on + 1)
    out1fmt("%s %co %.*s%s",
        i % 6 == 0 ? "set" : "",
        optval[i] ? '-' : '+',
        *on, on + 1,
        i % 6 == 5 || i == NOPTS - 1 ? "\n" : "");
  }
 } else {
  len = strlen(name);
  for (i = 0, on = optname; i < NOPTS; i++, on += *on + 1)
   if (*on == len && memcmp(on + 1, name, len) == 0) {
    setoptionbyindex(i, val);
    return;
   }
  error("Illegal option -o %s", name);
 }
}
