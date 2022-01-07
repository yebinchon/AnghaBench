
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_block {struct diff_block* next; } ;
struct diff3_block {struct diff3_block* next; } ;
typedef scalar_t__ lin ;


 scalar_t__ D_HIGHLINE (struct diff_block*,int ) ;
 scalar_t__ D_LOWLINE (struct diff_block*,int ) ;
 int FC ;
 int fatal (char*) ;
 struct diff3_block* using_to_diff3_block (struct diff_block**,struct diff_block**,int,int,struct diff3_block const*) ;

__attribute__((used)) static struct diff3_block *
make_3way_diff (struct diff_block *thread0, struct diff_block *thread1)
{
  struct diff_block *using[2];
  struct diff_block *last_using[2];
  struct diff_block *current[2];

  lin high_water_mark;

  int high_water_thread;
  int base_water_thread;
  int other_thread;

  struct diff_block *high_water_diff;
  struct diff_block *other_diff;

  struct diff3_block *result;
  struct diff3_block *tmpblock;
  struct diff3_block **result_end;

  struct diff3_block const *last_diff3;

  static struct diff3_block const zero_diff3;


  result = 0;
  result_end = &result;
  current[0] = thread0; current[1] = thread1;
  last_diff3 = &zero_diff3;



  while (current[0] || current[1])
    {
      using[0] = using[1] = last_using[0] = last_using[1] = 0;


      if (!current[0])
 base_water_thread = 1;
      else if (!current[1])
 base_water_thread = 0;
      else
 base_water_thread =
   (D_LOWLINE (current[0], FC) > D_LOWLINE (current[1], FC));

      high_water_thread = base_water_thread;

      high_water_diff = current[high_water_thread];

      high_water_mark = D_HIGHLINE (high_water_diff, FC);


      using[high_water_thread]
 = last_using[high_water_thread]
 = high_water_diff;
      current[high_water_thread] = high_water_diff->next;
      last_using[high_water_thread]->next = 0;


      other_thread = high_water_thread ^ 0x1;
      other_diff = current[other_thread];



      while (other_diff
      && D_LOWLINE (other_diff, FC) <= high_water_mark + 1)
 {



   if (using[other_thread])
     last_using[other_thread]->next = other_diff;
   else
     using[other_thread] = other_diff;
   last_using[other_thread] = other_diff;




   current[other_thread] = current[other_thread]->next;
   other_diff->next = 0;







   if (high_water_mark < D_HIGHLINE (other_diff, FC))
     {
       high_water_thread ^= 1;
       high_water_diff = other_diff;
       high_water_mark = D_HIGHLINE (other_diff, FC);
     }


   other_thread = high_water_thread ^ 0x1;
   other_diff = current[other_thread];
 }




      tmpblock = using_to_diff3_block (using, last_using,
           base_water_thread, high_water_thread,
           last_diff3);

      if (!tmpblock)
 fatal ("internal error: screwup in format of diff blocks");


      *result_end = tmpblock;
      result_end = &tmpblock->next;


      last_diff3 = tmpblock;
    }
  return result;
}
