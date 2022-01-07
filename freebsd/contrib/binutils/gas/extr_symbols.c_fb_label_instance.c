
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long FB_LABEL_SPECIAL ;
 int fb_label_count ;
 long* fb_label_instances ;
 long* fb_labels ;
 long* fb_low_counter ;

__attribute__((used)) static long
fb_label_instance (long label)
{
  long *i;

  if (label < FB_LABEL_SPECIAL)
    {
      return (fb_low_counter[label]);
    }

  if (fb_labels != ((void*)0))
    {
      for (i = fb_labels + FB_LABEL_SPECIAL;
    i < fb_labels + fb_label_count; ++i)
 {
   if (*i == label)
     {
       return (fb_label_instances[i - fb_labels]);
     }
 }
    }



  return 0;
}
