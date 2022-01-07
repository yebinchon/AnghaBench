
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfNN_ia64_dyn_sym_info {scalar_t__ addend; scalar_t__ got_offset; } ;
typedef scalar_t__ bfd_vma ;


 int BFD_ASSERT (int) ;
 int addend_compare ;
 int memmove (struct elfNN_ia64_dyn_sym_info*,struct elfNN_ia64_dyn_sym_info*,unsigned int) ;
 int qsort (struct elfNN_ia64_dyn_sym_info*,unsigned int,int,int ) ;

__attribute__((used)) static unsigned int
sort_dyn_sym_info (struct elfNN_ia64_dyn_sym_info *info,
     unsigned int count)
{
  bfd_vma curr, prev, got_offset;
  unsigned int i, kept, dup, diff, dest, src, len;

  qsort (info, count, sizeof (*info), addend_compare);


  prev = info [0].addend;
  got_offset = info [0].got_offset;
  for (i = 1; i < count; i++)
    {
      curr = info [i].addend;
      if (curr == prev)
 {

   if (got_offset == (bfd_vma) -1)
     got_offset = info [i].got_offset;
   break;
 }
      got_offset = info [i].got_offset;
      prev = curr;
    }


  dest = i++;


  if (i < count)
    {
      while (i < count)
 {


   kept = dest - 1;
   if (got_offset != (bfd_vma) -1)
     info [kept].got_offset = got_offset;

   curr = info [i].addend;
   got_offset = info [i].got_offset;



   if (curr == prev)
     {
       for (src = i + 1; src < count; src++)
  {
    if (info [src].addend != curr)
      break;


    if (got_offset == (bfd_vma) -1)
      got_offset = info [src].got_offset;
  }


       if (got_offset != (bfd_vma) -1)
  info [kept].got_offset = got_offset;
     }
   else
     src = i;

   if (src >= count)
     break;


   prev = info [src].addend;
   got_offset = info [src].got_offset;
   for (dup = src + 1; dup < count; dup++)
     {
       curr = info [dup].addend;
       if (curr == prev)
  {

    if (got_offset == (bfd_vma) -1)
      got_offset = info [dup].got_offset;



    if (got_offset != (bfd_vma) -1)
      info [dup - 1].got_offset = got_offset;
    break;
  }
       got_offset = info [dup].got_offset;
       prev = curr;
     }


   len = dup - src;
   i = dup + 1;

   if (len == 1 && dup < count)
     {



       for (diff = dup + 1, src++; diff < count; diff++, src++)
  {
    if (info [diff].addend != curr)
      break;

    if (got_offset == (bfd_vma) -1)
      got_offset = info [diff].got_offset;
  }



       BFD_ASSERT (curr == prev);
       if (got_offset != (bfd_vma) -1)
  info [diff - 1].got_offset = got_offset;

       if (diff < count)
  {


    prev = info [diff].addend;
    got_offset = info [diff].got_offset;
    for (dup = diff + 1; dup < count; dup++)
      {
        curr = info [dup].addend;
        if (curr == prev)
   {


     if (got_offset == (bfd_vma) -1)
       got_offset = info [dup].got_offset;
     break;
   }
        got_offset = info [dup].got_offset;
        prev = curr;
        diff++;
      }

    len = diff - src + 1;
    i = diff + 1;
  }
     }

   memmove (&info [dest], &info [src], len * sizeof (*info));

   dest += len;
 }

      count = dest;
    }
  else
    {


      if (dest < count)
 {


   if (got_offset != (bfd_vma) -1)
     info [dest - 1].got_offset = got_offset;
   count = dest;
 }
    }

  return count;
}
