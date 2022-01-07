
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {int size; int tag; int id; } ;


 int P9_DEBUG_9P ;
 int P9_DEBUG_PKT ;
 int P9_DPRINTK (int ,char*,int,int ,int ) ;
 int p9_debug_level ;
 int p9pdu_dump (int ,struct p9_fcall*) ;
 int p9pdu_writef (struct p9_fcall*,int ,char*,int) ;

int p9pdu_finalize(struct p9_fcall *pdu)
{
 int size = pdu->size;
 int err;

 pdu->size = 0;
 err = p9pdu_writef(pdu, 0, "d", size);
 pdu->size = size;






 P9_DPRINTK(P9_DEBUG_9P, ">>> size=%d type: %d tag: %d\n", pdu->size,
       pdu->id, pdu->tag);

 return err;
}
