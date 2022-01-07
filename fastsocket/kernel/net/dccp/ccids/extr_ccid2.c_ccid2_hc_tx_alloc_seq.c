
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccid2_seq {struct ccid2_seq* ccid2s_next; struct ccid2_seq* ccid2s_prev; } ;
struct ccid2_hc_tx_sock {int ccid2hctx_seqbufc; struct ccid2_seq** ccid2hctx_seqbuf; struct ccid2_seq* ccid2hctx_seqt; struct ccid2_seq* ccid2hctx_seqh; } ;


 int CCID2_SEQBUF_LEN ;
 int ENOMEM ;
 int gfp_any () ;
 struct ccid2_seq* kmalloc (int,int ) ;

__attribute__((used)) static int ccid2_hc_tx_alloc_seq(struct ccid2_hc_tx_sock *hctx)
{
 struct ccid2_seq *seqp;
 int i;


 if (hctx->ccid2hctx_seqbufc >= (sizeof(hctx->ccid2hctx_seqbuf) /
     sizeof(struct ccid2_seq*)))
  return -ENOMEM;


 seqp = kmalloc(CCID2_SEQBUF_LEN * sizeof(struct ccid2_seq), gfp_any());
 if (seqp == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < (CCID2_SEQBUF_LEN - 1); i++) {
  seqp[i].ccid2s_next = &seqp[i + 1];
  seqp[i + 1].ccid2s_prev = &seqp[i];
 }
 seqp[CCID2_SEQBUF_LEN - 1].ccid2s_next = seqp;
 seqp->ccid2s_prev = &seqp[CCID2_SEQBUF_LEN - 1];


 if (hctx->ccid2hctx_seqbufc == 0)
  hctx->ccid2hctx_seqh = hctx->ccid2hctx_seqt = seqp;
 else {

  hctx->ccid2hctx_seqh->ccid2s_next = seqp;
  seqp->ccid2s_prev = hctx->ccid2hctx_seqh;

  hctx->ccid2hctx_seqt->ccid2s_prev = &seqp[CCID2_SEQBUF_LEN - 1];
  seqp[CCID2_SEQBUF_LEN - 1].ccid2s_next = hctx->ccid2hctx_seqt;
 }


 hctx->ccid2hctx_seqbuf[hctx->ccid2hctx_seqbufc] = seqp;
 hctx->ccid2hctx_seqbufc++;

 return 0;
}
