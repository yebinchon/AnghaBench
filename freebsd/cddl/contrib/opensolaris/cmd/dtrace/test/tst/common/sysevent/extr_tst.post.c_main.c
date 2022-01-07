
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysevent_id_t ;


 int fprintf (int ,char*) ;
 int sleep (int) ;
 int stderr ;
 scalar_t__ sysevent_post_event (char*,char*,char*,char*,int *,int *) ;

int
main(int argc, char **argv)
{
 sysevent_id_t id;

 for (;;) {
  if (sysevent_post_event("class_dtest", "subclass_dtest",
      "vendor_dtest", "publisher_dtest", ((void*)0), &id) != 0) {
   (void) fprintf(stderr, "failed to post sysevent\n");
   return (1);
  }

  sleep(1);
 }
}
