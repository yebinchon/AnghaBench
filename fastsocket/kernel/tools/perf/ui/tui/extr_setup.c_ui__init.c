
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGSEGV ;
 int SIGTERM ;
 int SL_KEY_UNTAB ;
 int SLkp_define_keysym (char*,int ) ;
 int SLkp_init () ;
 int hist_browser__init_hpp () ;
 int newtInit () ;
 int newtSetSuspendCallback (int ,int *) ;
 int newt_suspend ;
 int perf_error__register (int *) ;
 int perf_tui_eops ;
 int pr_err (char*) ;
 int signal (int ,int ) ;
 int ui__signal ;
 int ui_browser__init () ;
 int ui_helpline__init () ;
 int ui_progress__init () ;

int ui__init(void)
{
 int err;

 newtInit();
 err = SLkp_init();
 if (err < 0) {
  pr_err("TUI initialization failed.\n");
  goto out;
 }

 SLkp_define_keysym((char *)"^(kB)", SL_KEY_UNTAB);

 newtSetSuspendCallback(newt_suspend, ((void*)0));
 ui_helpline__init();
 ui_browser__init();
 ui_progress__init();

 signal(SIGSEGV, ui__signal);
 signal(SIGFPE, ui__signal);
 signal(SIGINT, ui__signal);
 signal(SIGQUIT, ui__signal);
 signal(SIGTERM, ui__signal);

 perf_error__register(&perf_tui_eops);

 hist_browser__init_hpp();
out:
 return err;
}
