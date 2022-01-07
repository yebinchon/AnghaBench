
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nis_callback_data {int ncd_map; int ncd_m; int (* ncd_fn ) (int ,char*,char*) ;} ;


 int FALSE ;
 int TRUE ;
 int XLOG_ERROR ;
 int YP_NOMORE ;
 int YP_TRUE ;
 int plog (int ,char*,int ,int ,int,int) ;
 char* strnsave (char*,int) ;
 int stub1 (int ,char*,char*) ;
 int yperr_string (int) ;
 int ypprot_err (int) ;

__attribute__((used)) static int
callback(int status, char *key, int kl, char *val, int vl, char *data)
{
  struct nis_callback_data *ncdp = (struct nis_callback_data *) data;

  if (status == YP_TRUE) {


    char *kp = strnsave(key, kl);
    char *vp = strnsave(val, vl);

    (*ncdp->ncd_fn) (ncdp->ncd_m, kp, vp);


    return FALSE;

  } else {


    if (status != YP_NOMORE) {

      int e = ypprot_err(status);

      plog(XLOG_ERROR, "yp enumeration of %s: %s, status=%d, e=%d",
    ncdp->ncd_map, yperr_string(e), status, e);
    }
    return TRUE;
  }
}
