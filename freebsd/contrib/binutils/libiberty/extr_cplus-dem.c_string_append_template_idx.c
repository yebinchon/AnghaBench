
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;


 int INTBUF_SIZE ;
 int sprintf (char*,char*,int) ;
 int string_append (int *,char*) ;

__attribute__((used)) static void
string_append_template_idx (string *s, int idx)
{
  char buf[INTBUF_SIZE + 1 ];
  sprintf(buf, "T%d", idx);
  string_append (s, buf);
}
