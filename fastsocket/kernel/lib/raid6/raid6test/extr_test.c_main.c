
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid6_recov_calls {char* name; int datap; int data2; int (* valid ) () ;} ;
struct raid6_calls {int (* gen_syndrome ) (int,int,void**) ;scalar_t__ (* valid ) () ;} ;


 int NDISKS ;
 int PAGE_SIZE ;
 int * data ;
 int dataptrs ;
 int makedata () ;
 int memset (int ,int,int) ;
 int printf (char*,...) ;
 int raid6_2data_recov ;
 struct raid6_calls** raid6_algos ;
 struct raid6_calls raid6_call ;
 int raid6_datap_recov ;
 struct raid6_recov_calls** raid6_recov_algos ;
 int raid6_select_algo () ;
 int stub1 () ;
 scalar_t__ stub2 () ;
 int stub3 (int,int,void**) ;
 scalar_t__ test_disks (int,int) ;

int main(int argc, char *argv[])
{
 const struct raid6_calls *const *algo;
 const struct raid6_recov_calls *const *ra;
 int i, j;
 int err = 0;

 makedata();

 for (ra = raid6_recov_algos; *ra; ra++) {
  if ((*ra)->valid && !(*ra)->valid())
   continue;
  raid6_2data_recov = (*ra)->data2;
  raid6_datap_recov = (*ra)->datap;

  printf("using recovery %s\n", (*ra)->name);

  for (algo = raid6_algos; *algo; algo++) {
   if (!(*algo)->valid || (*algo)->valid()) {
    raid6_call = **algo;


    memset(data[NDISKS-2], 0xee, 2*PAGE_SIZE);


    raid6_call.gen_syndrome(NDISKS, PAGE_SIZE,
       (void **)&dataptrs);

    for (i = 0; i < NDISKS-1; i++)
     for (j = i+1; j < NDISKS; j++)
      err += test_disks(i, j);
   }
  }
  printf("\n");
 }

 printf("\n");

 raid6_select_algo();

 if (err)
  printf("\n*** ERRORS FOUND ***\n");

 return err;
}
