
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int remove_complete; } ;
struct whc {int dummy; } ;


 int qset_free (struct whc*,struct whc_qset*) ;
 int wait_for_completion (int *) ;

void qset_delete(struct whc *whc, struct whc_qset *qset)
{
 wait_for_completion(&qset->remove_complete);
 qset_free(whc, qset);
}
