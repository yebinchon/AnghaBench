
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_netobj {int len; unsigned char* data; } ;


 int G_BAD_TOK_HEADER ;
 int G_WRONG_MECH ;
 int der_read_length (unsigned char**,int*) ;
 int g_OID_equal (struct xdr_netobj*,struct xdr_netobj*) ;

u32
g_verify_token_header(struct xdr_netobj *mech, int *body_size,
        unsigned char **buf_in, int toksize)
{
 unsigned char *buf = *buf_in;
 int seqsize;
 struct xdr_netobj toid;
 int ret = 0;

 if ((toksize-=1) < 0)
  return(G_BAD_TOK_HEADER);
 if (*buf++ != 0x60)
  return(G_BAD_TOK_HEADER);

 if ((seqsize = der_read_length(&buf, &toksize)) < 0)
  return(G_BAD_TOK_HEADER);

 if (seqsize != toksize)
  return(G_BAD_TOK_HEADER);

 if ((toksize-=1) < 0)
  return(G_BAD_TOK_HEADER);
 if (*buf++ != 0x06)
  return(G_BAD_TOK_HEADER);

 if ((toksize-=1) < 0)
  return(G_BAD_TOK_HEADER);
 toid.len = *buf++;

 if ((toksize-=toid.len) < 0)
  return(G_BAD_TOK_HEADER);
 toid.data = buf;
 buf+=toid.len;

 if (! g_OID_equal(&toid, mech))
  ret = G_WRONG_MECH;




 if ((toksize-=2) < 0)
  return(G_BAD_TOK_HEADER);

 if (ret)
  return(ret);

 if (!ret) {
  *buf_in = buf;
  *body_size = toksize;
 }

 return(ret);
}
