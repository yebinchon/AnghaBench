
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evchan_t ;


 int EVCH_CREAT ;
 int EVCH_HOLD_PEND ;
 int EVCH_SLEEP ;
 int fprintf (int ,char*) ;
 int sleep (int) ;
 int stderr ;
 scalar_t__ sysevent_evc_bind (char*,int **,int) ;
 scalar_t__ sysevent_evc_publish (int *,char*,char*,char*,char*,int *,int ) ;
 int sysevent_evc_unbind (int *) ;

int
main(int argc, char **argv)
{
 evchan_t *ch;

 if (sysevent_evc_bind("channel_dtest", &ch,
     EVCH_CREAT | EVCH_HOLD_PEND) != 0) {
  (void) fprintf(stderr, "failed to bind to sysevent channel\n");
  return (1);
 }

 for (;;) {
  if (sysevent_evc_publish(ch, "class_dtest", "subclass_dtest",
      "vendor_dtest", "publisher_dtest", ((void*)0), EVCH_SLEEP) != 0) {
   (void) sysevent_evc_unbind(ch);
   (void) fprintf(stderr, "failed to publisth sysevent\n");
   return (1);
  }
  sleep(1);
 }
}
