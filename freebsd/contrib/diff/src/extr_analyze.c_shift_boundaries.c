
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {char* changed; size_t* equivs; size_t buffered_lines; } ;
typedef size_t lin ;



__attribute__((used)) static void
shift_boundaries (struct file_data filevec[])
{
  int f;

  for (f = 0; f < 2; f++)
    {
      char *changed = filevec[f].changed;
      char *other_changed = filevec[1 - f].changed;
      lin const *equivs = filevec[f].equivs;
      lin i = 0;
      lin j = 0;
      lin i_end = filevec[f].buffered_lines;

      while (1)
 {
   lin runlength, start, corresponding;




   while (i < i_end && !changed[i])
     {
       while (other_changed[j++])
  continue;
       i++;
     }

   if (i == i_end)
     break;

   start = i;



   while (changed[++i])
     continue;
   while (other_changed[j])
     j++;

   do
     {


       runlength = i - start;





       while (start && equivs[start - 1] == equivs[i - 1])
  {
    changed[--start] = 1;
    changed[--i] = 0;
    while (changed[start - 1])
      start--;
    while (other_changed[--j])
      continue;
  }




       corresponding = other_changed[j - 1] ? i : i_end;







       while (i != i_end && equivs[start] == equivs[i])
  {
    changed[start++] = 0;
    changed[i++] = 1;
    while (changed[i])
      i++;
    while (other_changed[++j])
      corresponding = i;
  }
     }
   while (runlength != i - start);




   while (corresponding < i)
     {
       changed[--start] = 1;
       changed[--i] = 0;
       while (other_changed[--j])
  continue;
     }
 }
    }
}
