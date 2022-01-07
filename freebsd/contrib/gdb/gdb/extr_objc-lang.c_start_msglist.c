
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selname {char* msglist_sel; scalar_t__ msglist_len; struct selname* next; } ;


 scalar_t__ msglist_len ;
 char* msglist_sel ;
 struct selname* selname_chain ;
 scalar_t__ xmalloc (int) ;

void
start_msglist(void)
{
  struct selname *new =
    (struct selname *) xmalloc (sizeof (struct selname));

  new->next = selname_chain;
  new->msglist_len = msglist_len;
  new->msglist_sel = msglist_sel;
  msglist_len = 0;
  msglist_sel = (char *)xmalloc(1);
  *msglist_sel = 0;
  selname_chain = new;
}
