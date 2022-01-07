
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int sync_page (void*) ;

__attribute__((used)) static int sync_page_killable(void *word)
{
 sync_page(word);
 return fatal_signal_pending(current) ? -EINTR : 0;
}
