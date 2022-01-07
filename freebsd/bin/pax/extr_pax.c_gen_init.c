
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
struct rlimit {int rlim_max; int rlim_cur; } ;


 int RLIMIT_DATA ;
 int RLIMIT_FSIZE ;
 int RLIMIT_RSS ;
 int RLIMIT_STACK ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGXCPU ;
 int SIGXFSZ ;
 int SIG_IGN ;
 int errno ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int memset (struct sigaction*,int ,int) ;
 int paxwarn (int,char*) ;
 int s_mask ;
 int setrlimit (int ,struct rlimit*) ;
 scalar_t__ setup_sig (int ,struct sigaction*) ;
 int sig_cleanup ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 scalar_t__ sigaddset (int *,int ) ;
 scalar_t__ sigemptyset (int *) ;
 int syswarn (int,int ,char*) ;

__attribute__((used)) static int
gen_init(void)
{
 struct rlimit reslimit;
 struct sigaction n_hand;





 if (getrlimit(RLIMIT_DATA , &reslimit) == 0){
  reslimit.rlim_cur = reslimit.rlim_max;
  (void)setrlimit(RLIMIT_DATA , &reslimit);
 }





 if (getrlimit(RLIMIT_FSIZE , &reslimit) == 0){
  reslimit.rlim_cur = reslimit.rlim_max;
  (void)setrlimit(RLIMIT_FSIZE , &reslimit);
 }




 if (getrlimit(RLIMIT_STACK , &reslimit) == 0){
  reslimit.rlim_cur = reslimit.rlim_max;
  (void)setrlimit(RLIMIT_STACK , &reslimit);
 }




 if (getrlimit(RLIMIT_RSS , &reslimit) == 0){
  reslimit.rlim_cur = reslimit.rlim_max;
  (void)setrlimit(RLIMIT_RSS , &reslimit);
 }







 if ((sigemptyset(&s_mask) < 0) || (sigaddset(&s_mask, SIGTERM) < 0) ||
     (sigaddset(&s_mask,SIGINT) < 0)||(sigaddset(&s_mask,SIGHUP) < 0) ||
     (sigaddset(&s_mask,SIGPIPE) < 0)||(sigaddset(&s_mask,SIGQUIT)<0) ||
     (sigaddset(&s_mask,SIGXCPU) < 0)||(sigaddset(&s_mask,SIGXFSZ)<0)) {
  paxwarn(1, "Unable to set up signal mask");
  return(-1);
 }
 memset(&n_hand, 0, sizeof n_hand);
 n_hand.sa_mask = s_mask;
 n_hand.sa_flags = 0;
 n_hand.sa_handler = sig_cleanup;

 if (setup_sig(SIGHUP, &n_hand) ||
    setup_sig(SIGTERM, &n_hand) ||
    setup_sig(SIGINT, &n_hand) ||
    setup_sig(SIGQUIT, &n_hand) ||
    setup_sig(SIGXCPU, &n_hand))
  goto out;

 n_hand.sa_handler = SIG_IGN;
 if ((sigaction(SIGPIPE, &n_hand, ((void*)0)) < 0) ||
     (sigaction(SIGXFSZ, &n_hand, ((void*)0)) < 0))
  goto out;
 return(0);

    out:
 syswarn(1, errno, "Unable to set up signal handler");
 return(-1);
}
