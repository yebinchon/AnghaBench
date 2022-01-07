
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct property* private; } ;
struct property {int length; void* value; } ;


 scalar_t__ is_string (void*,int) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int strlen (void*) ;

__attribute__((used)) static int property_show(struct seq_file *f, void *v)
{
 struct property *prop = f->private;
 void *pval;
 int len;

 len = prop->length;
 pval = prop->value;

 if (is_string(pval, len)) {
  while (len > 0) {
   int n = strlen(pval);

   seq_printf(f, "%s", (char *) pval);


   pval += n + 1;
   len -= n + 1;

   if (len > 0)
    seq_printf(f, " + ");
  }
 } else {
  if (len & 3) {
   while (len) {
    len--;
    if (len)
     seq_printf(f, "%02x.",
         *(unsigned char *) pval);
    else
     seq_printf(f, "%02x",
         *(unsigned char *) pval);
    pval++;
   }
  } else {
   while (len >= 4) {
    len -= 4;

    if (len)
     seq_printf(f, "%08x.",
         *(unsigned int *) pval);
    else
     seq_printf(f, "%08x",
         *(unsigned int *) pval);
    pval += 4;
   }
  }
 }
 seq_printf(f, "\n");

 return 0;
}
