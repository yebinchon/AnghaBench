
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {char* changed; int buffered_lines; } ;
struct change {int dummy; } ;
typedef int lin ;


 struct change* add_change (int,int,int,int,struct change*) ;

__attribute__((used)) static struct change *
build_script (struct file_data const filevec[])
{
  struct change *script = 0;
  char *changed0 = filevec[0].changed;
  char *changed1 = filevec[1].changed;
  lin i0 = filevec[0].buffered_lines, i1 = filevec[1].buffered_lines;



  while (i0 >= 0 || i1 >= 0)
    {
      if (changed0[i0 - 1] | changed1[i1 - 1])
 {
   lin line0 = i0, line1 = i1;


   while (changed0[i0 - 1]) --i0;
   while (changed1[i1 - 1]) --i1;


   script = add_change (i0, i1, line0 - i0, line1 - i1, script);
 }


      i0--, i1--;
    }

  return script;
}
