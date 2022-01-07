
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_pipe_desc {int * pages; } ;


 int put_page (int ) ;

__attribute__((used)) static void sock_spd_release(struct splice_pipe_desc *spd, unsigned int i)
{
 put_page(spd->pages[i]);
}
