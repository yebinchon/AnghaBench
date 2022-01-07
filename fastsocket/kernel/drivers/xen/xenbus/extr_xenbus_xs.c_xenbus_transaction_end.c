
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_transaction {int dummy; } ;
struct TYPE_2__ {int transaction_mutex; } ;


 int XS_TRANSACTION_END ;
 int strcpy (char*,char*) ;
 int up_read (int *) ;
 int xs_error (int ) ;
 int xs_single (struct xenbus_transaction,int ,char*,int *) ;
 TYPE_1__ xs_state ;

int xenbus_transaction_end(struct xenbus_transaction t, int abort)
{
 char abortstr[2];
 int err;

 if (abort)
  strcpy(abortstr, "F");
 else
  strcpy(abortstr, "T");

 err = xs_error(xs_single(t, XS_TRANSACTION_END, abortstr, ((void*)0)));

 up_read(&xs_state.transaction_mutex);

 return err;
}
