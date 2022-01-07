
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {char* changed; size_t buffered_lines; } ;
struct change {int dummy; } ;
typedef size_t lin ;


 struct change* add_change (size_t,size_t,size_t,size_t,struct change*) ;

__attribute__((used)) static struct change *
build_reverse_script (struct file_data const filevec[])
{
  struct change *script = 0;
  char *changed0 = filevec[0].changed;
  char *changed1 = filevec[1].changed;
  lin len0 = filevec[0].buffered_lines;
  lin len1 = filevec[1].buffered_lines;



  lin i0 = 0, i1 = 0;

  while (i0 < len0 || i1 < len1)
    {
      if (changed0[i0] | changed1[i1])
 {
   lin line0 = i0, line1 = i1;


   while (changed0[i0]) ++i0;
   while (changed1[i1]) ++i1;


   script = add_change (line0, line1, i0 - line0, i1 - line1, script);
 }


      i0++, i1++;
    }

  return script;
}
