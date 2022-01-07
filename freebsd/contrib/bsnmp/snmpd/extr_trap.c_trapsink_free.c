
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapsink {int socket; } ;


 int TAILQ_REMOVE (int *,struct trapsink*,int ) ;
 int close (int) ;
 int free (struct trapsink*) ;
 int link ;
 int trapsink_list ;

__attribute__((used)) static void
trapsink_free(struct trapsink *t)
{
 TAILQ_REMOVE(&trapsink_list, t, link);
 if (t->socket != -1)
  (void)close(t->socket);
 free(t);
}
