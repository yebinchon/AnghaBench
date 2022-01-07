
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB_LABEL_BUMP_BY ;
 long FB_LABEL_SPECIAL ;
 long fb_label_count ;
 int* fb_label_instances ;
 long fb_label_max ;
 long* fb_labels ;
 int * fb_low_counter ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,long) ;

void
fb_label_instance_inc (long label)
{
  long *i;

  if (label < FB_LABEL_SPECIAL)
    {
      ++fb_low_counter[label];
      return;
    }

  if (fb_labels != ((void*)0))
    {
      for (i = fb_labels + FB_LABEL_SPECIAL;
    i < fb_labels + fb_label_count; ++i)
 {
   if (*i == label)
     {
       ++fb_label_instances[i - fb_labels];
       return;
     }
 }
    }



  if (fb_labels == ((void*)0))
    {
      fb_labels = (long *) xmalloc (FB_LABEL_BUMP_BY * sizeof (long));
      fb_label_instances = (long *) xmalloc (FB_LABEL_BUMP_BY * sizeof (long));
      fb_label_max = FB_LABEL_BUMP_BY;
      fb_label_count = FB_LABEL_SPECIAL;

    }
  else if (fb_label_count == fb_label_max)
    {
      fb_label_max += FB_LABEL_BUMP_BY;
      fb_labels = (long *) xrealloc ((char *) fb_labels,
         fb_label_max * sizeof (long));
      fb_label_instances = (long *) xrealloc ((char *) fb_label_instances,
           fb_label_max * sizeof (long));
    }

  fb_labels[fb_label_count] = label;
  fb_label_instances[fb_label_count] = 1;
  ++fb_label_count;
}
