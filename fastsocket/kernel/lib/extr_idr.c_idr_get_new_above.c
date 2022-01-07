
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;


 int _idr_rc_to_errno (int) ;
 int idr_get_new_above_int (struct idr*,void*,int) ;

int idr_get_new_above(struct idr *idp, void *ptr, int starting_id, int *id)
{
 int rv;

 rv = idr_get_new_above_int(idp, ptr, starting_id);




 if (rv < 0)
  return _idr_rc_to_errno(rv);
 *id = rv;
 return 0;
}
