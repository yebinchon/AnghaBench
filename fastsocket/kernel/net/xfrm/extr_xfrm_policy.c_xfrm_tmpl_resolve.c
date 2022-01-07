
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct xfrm_policy {int xfrm_nr; } ;
struct flowi {int dummy; } ;


 int ENOBUFS ;
 int XFRM_MAX_DEPTH ;
 int xfrm_state_put (struct xfrm_state*) ;
 int xfrm_state_sort (struct xfrm_state**,struct xfrm_state**,int,unsigned short) ;
 int xfrm_tmpl_resolve_one (struct xfrm_policy*,struct flowi*,struct xfrm_state**,unsigned short) ;

__attribute__((used)) static int
xfrm_tmpl_resolve(struct xfrm_policy **pols, int npols, struct flowi *fl,
    struct xfrm_state **xfrm,
    unsigned short family)
{
 struct xfrm_state *tp[XFRM_MAX_DEPTH];
 struct xfrm_state **tpp = (npols > 1) ? tp : xfrm;
 int cnx = 0;
 int error;
 int ret;
 int i;

 for (i = 0; i < npols; i++) {
  if (cnx + pols[i]->xfrm_nr >= XFRM_MAX_DEPTH) {
   error = -ENOBUFS;
   goto fail;
  }

  ret = xfrm_tmpl_resolve_one(pols[i], fl, &tpp[cnx], family);
  if (ret < 0) {
   error = ret;
   goto fail;
  } else
   cnx += ret;
 }


 if (npols > 1)
  xfrm_state_sort(xfrm, tpp, cnx, family);

 return cnx;

 fail:
 for (cnx--; cnx>=0; cnx--)
  xfrm_state_put(tpp[cnx]);
 return error;

}
