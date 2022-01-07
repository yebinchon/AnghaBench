
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct winsize {int ws_row; int ws_col; } ;
struct termios {long c_lflag; long c_iflag; long c_oflag; long c_cflag; scalar_t__* c_cc; } ;
struct cchar {char* name; size_t sub; scalar_t__ def; } ;
typedef enum FMT { ____Placeholder_FMT } FMT ;
typedef int buf2 ;
typedef int buf1 ;


 long const ALTWERASE ;
 long const BRKINT ;
 int BSD ;

 long const CDSR_OFLOW ;
 long const CDTR_IFLOW ;
 long const CLOCAL ;
 int CNO_RTSDTR ;
 long const CREAD ;





 long CSIZE ;
 long const CSTOPB ;
 long const ECHO ;
 long const ECHOCTL ;
 long const ECHOE ;
 long const ECHOK ;
 long const ECHOKE ;
 long const ECHONL ;
 long const ECHOPRT ;
 long const EXTPROC ;
 long const FLUSHO ;
 long const HUPCL ;
 long const ICANON ;
 long const ICRNL ;
 long const IEXTEN ;
 long const IGNBRK ;
 long const IGNCR ;
 long const IGNPAR ;
 long const IMAXBEL ;
 long const INLCR ;
 long const INPCK ;
 long const ISIG ;
 long const ISTRIP ;
 long const IXANY ;
 long const IXOFF ;
 long const IXON ;
 int LINELENGTH ;
 long const MDMBUF ;
 long const NOFLSH ;
 long const NOKERNINFO ;
 long const OCRNL ;
 long const ONLCR ;
 long const ONLRET ;
 long const ONOCR ;
 long const OPOST ;
 int PARENB ;
 long const PARMRK ;
 long const PARODD ;
 long const PENDIN ;
 int POSIX ;




 long TABDLY ;
 long const TOSTOP ;
 int TTYDISC ;
 char* WD ;
 int binit (char*) ;
 int bput (char*) ;
 struct cchar* cchars1 ;
 char* ccval (struct cchar*,scalar_t__) ;
 int cfgetispeed (struct termios*) ;
 int cfgetospeed (struct termios*) ;
 int on (int ) ;
 scalar_t__ printf (char*,...) ;
 int put (char*,long const,int) ;
 int snprintf (char*,int,char*,char*,...) ;

void
print(struct termios *tp, struct winsize *wp, int ldisc, enum FMT fmt)
{
 struct cchar *p;
 long tmp;
 u_char *cc;
 int cnt, ispeed, ospeed;
 char buf1[100], buf2[100];

 cnt = 0;


 if (ldisc != TTYDISC) {
  switch(ldisc) {
  case 130:
   cnt += printf("slip disc; ");
   break;
  case 131:
   cnt += printf("ppp disc; ");
   break;
  default:
   cnt += printf("#%d disc; ", ldisc);
   break;
  }
 }


 ispeed = cfgetispeed(tp);
 ospeed = cfgetospeed(tp);
 if (ispeed != ospeed)
  cnt +=
      printf("ispeed %d baud; ospeed %d baud;", ispeed, ospeed);
 else
  cnt += printf("speed %d baud;", ispeed);
 if (fmt >= BSD)
  cnt += printf(" %d rows; %d columns;", wp->ws_row, wp->ws_col);
 if (cnt)
  (void)printf("\n");







 tmp = tp->c_lflag;
 binit("lflags");
 if (fmt >= BSD || ((tmp & (ICANON)) != 0) != (1)) bput(("-icanon") + ((tmp & (ICANON)) != 0));;
 if (fmt >= BSD || ((tmp & (ISIG)) != 0) != (1)) bput(("-isig") + ((tmp & (ISIG)) != 0));;
 if (fmt >= BSD || ((tmp & (IEXTEN)) != 0) != (1)) bput(("-iexten") + ((tmp & (IEXTEN)) != 0));;
 if (fmt >= BSD || ((tmp & (ECHO)) != 0) != (1)) bput(("-echo") + ((tmp & (ECHO)) != 0));;
 if (fmt >= BSD || ((tmp & (ECHOE)) != 0) != (0)) bput(("-echoe") + ((tmp & (ECHOE)) != 0));;
 if (fmt >= BSD || ((tmp & (ECHOK)) != 0) != (0)) bput(("-echok") + ((tmp & (ECHOK)) != 0));;
 if (fmt >= BSD || ((tmp & (ECHOKE)) != 0) != (0)) bput(("-echoke") + ((tmp & (ECHOKE)) != 0));;
 if (fmt >= BSD || ((tmp & (ECHONL)) != 0) != (0)) bput(("-echonl") + ((tmp & (ECHONL)) != 0));;
 if (fmt >= BSD || ((tmp & (ECHOCTL)) != 0) != (0)) bput(("-echoctl") + ((tmp & (ECHOCTL)) != 0));;
 if (fmt >= BSD || ((tmp & (ECHOPRT)) != 0) != (0)) bput(("-echoprt") + ((tmp & (ECHOPRT)) != 0));;
 if (fmt >= BSD || ((tmp & (ALTWERASE)) != 0) != (0)) bput(("-altwerase") + ((tmp & (ALTWERASE)) != 0));;
 if (fmt >= BSD || ((tmp & (NOFLSH)) != 0) != (0)) bput(("-noflsh") + ((tmp & (NOFLSH)) != 0));;
 if (fmt >= BSD || ((tmp & (TOSTOP)) != 0) != (0)) bput(("-tostop") + ((tmp & (TOSTOP)) != 0));;
 if (fmt >= BSD || ((tmp & (FLUSHO)) != 0) != (0)) bput(("-flusho") + ((tmp & (FLUSHO)) != 0));;
 if (fmt >= BSD || ((tmp & (PENDIN)) != 0) != (0)) bput(("-pendin") + ((tmp & (PENDIN)) != 0));;
 if (fmt >= BSD || ((tmp & (NOKERNINFO)) != 0) != (0)) bput(("-nokerninfo") + ((tmp & (NOKERNINFO)) != 0));;
 if (fmt >= BSD || ((tmp & (EXTPROC)) != 0) != (0)) bput(("-extproc") + ((tmp & (EXTPROC)) != 0));;


 tmp = tp->c_iflag;
 binit("iflags");
 if (fmt >= BSD || ((tmp & (ISTRIP)) != 0) != (0)) bput(("-istrip") + ((tmp & (ISTRIP)) != 0));;
 if (fmt >= BSD || ((tmp & (ICRNL)) != 0) != (1)) bput(("-icrnl") + ((tmp & (ICRNL)) != 0));;
 if (fmt >= BSD || ((tmp & (INLCR)) != 0) != (0)) bput(("-inlcr") + ((tmp & (INLCR)) != 0));;
 if (fmt >= BSD || ((tmp & (IGNCR)) != 0) != (0)) bput(("-igncr") + ((tmp & (IGNCR)) != 0));;
 if (fmt >= BSD || ((tmp & (IXON)) != 0) != (1)) bput(("-ixon") + ((tmp & (IXON)) != 0));;
 if (fmt >= BSD || ((tmp & (IXOFF)) != 0) != (0)) bput(("-ixoff") + ((tmp & (IXOFF)) != 0));;
 if (fmt >= BSD || ((tmp & (IXANY)) != 0) != (1)) bput(("-ixany") + ((tmp & (IXANY)) != 0));;
 if (fmt >= BSD || ((tmp & (IMAXBEL)) != 0) != (1)) bput(("-imaxbel") + ((tmp & (IMAXBEL)) != 0));;
 if (fmt >= BSD || ((tmp & (IGNBRK)) != 0) != (0)) bput(("-ignbrk") + ((tmp & (IGNBRK)) != 0));;
 if (fmt >= BSD || ((tmp & (BRKINT)) != 0) != (1)) bput(("-brkint") + ((tmp & (BRKINT)) != 0));;
 if (fmt >= BSD || ((tmp & (INPCK)) != 0) != (0)) bput(("-inpck") + ((tmp & (INPCK)) != 0));;
 if (fmt >= BSD || ((tmp & (IGNPAR)) != 0) != (0)) bput(("-ignpar") + ((tmp & (IGNPAR)) != 0));;
 if (fmt >= BSD || ((tmp & (PARMRK)) != 0) != (0)) bput(("-parmrk") + ((tmp & (PARMRK)) != 0));;


 tmp = tp->c_oflag;
 binit("oflags");
 if (fmt >= BSD || ((tmp & (OPOST)) != 0) != (1)) bput(("-opost") + ((tmp & (OPOST)) != 0));;
 if (fmt >= BSD || ((tmp & (ONLCR)) != 0) != (1)) bput(("-onlcr") + ((tmp & (ONLCR)) != 0));;
 if (fmt >= BSD || ((tmp & (OCRNL)) != 0) != (0)) bput(("-ocrnl") + ((tmp & (OCRNL)) != 0));;
 switch(tmp&TABDLY) {
 case 129:
  bput("tab0");
  break;
 case 128:
  bput("tab3");
  break;
 }
 if (fmt >= BSD || ((tmp & (ONOCR)) != 0) != (0)) bput(("-onocr") + ((tmp & (ONOCR)) != 0));;
 if (fmt >= BSD || ((tmp & (ONLRET)) != 0) != (0)) bput(("-onlret") + ((tmp & (ONLRET)) != 0));;


 tmp = tp->c_cflag;
 binit("cflags");
 if (fmt >= BSD || ((tmp & (CREAD)) != 0) != (1)) bput(("-cread") + ((tmp & (CREAD)) != 0));;
 switch(tmp&CSIZE) {
 case 135:
  bput("cs5");
  break;
 case 134:
  bput("cs6");
  break;
 case 133:
  bput("cs7");
  break;
 case 132:
  bput("cs8");
  break;
 }
 bput("-parenb" + ((tmp & (PARENB)) != 0));
 if (fmt >= BSD || ((tmp & (PARODD)) != 0) != (0)) bput(("-parodd") + ((tmp & (PARODD)) != 0));;
 if (fmt >= BSD || ((tmp & (HUPCL)) != 0) != (1)) bput(("-hupcl") + ((tmp & (HUPCL)) != 0));;
 if (fmt >= BSD || ((tmp & (CLOCAL)) != 0) != (0)) bput(("-clocal") + ((tmp & (CLOCAL)) != 0));;
 if (fmt >= BSD || ((tmp & (CSTOPB)) != 0) != (0)) bput(("-cstopb") + ((tmp & (CSTOPB)) != 0));;
 switch(tmp & (137 | 136)) {
 case 137:
  bput("ctsflow");
  break;
 case 136:
  bput("rtsflow");
  break;
 default:
  if (fmt >= BSD || ((tmp & (137 | 136)) != 0) != (0)) bput(("-crtscts") + ((tmp & (137 | 136)) != 0));;
  break;
 }
 if (fmt >= BSD || ((tmp & (CDSR_OFLOW)) != 0) != (0)) bput(("-dsrflow") + ((tmp & (CDSR_OFLOW)) != 0));;
 if (fmt >= BSD || ((tmp & (CDTR_IFLOW)) != 0) != (0)) bput(("-dtrflow") + ((tmp & (CDTR_IFLOW)) != 0));;
 if (fmt >= BSD || ((tmp & (MDMBUF)) != 0) != (0)) bput(("-mdmbuf") + ((tmp & (MDMBUF)) != 0));;
 if (((tmp & (CNO_RTSDTR)) != 0))
  bput("-rtsdtr");
 else {
  if (fmt >= BSD)
   bput("rtsdtr");
 }


 cc = tp->c_cc;
 if (fmt == POSIX) {
  binit("cchars");
  for (p = cchars1; p->name; ++p) {
   (void)snprintf(buf1, sizeof(buf1), "%s = %s;",
       p->name, ccval(p, cc[p->sub]));
   bput(buf1);
  }
  binit(((void*)0));
 } else {
  binit(((void*)0));
  for (p = cchars1, cnt = 0; p->name; ++p) {
   if (fmt != BSD && cc[p->sub] == p->def)
    continue;

   (void)snprintf(buf1 + cnt * 8, sizeof(buf1) - cnt * 8,
       "%-8s", p->name);
   (void)snprintf(buf2 + cnt * 8, sizeof(buf2) - cnt * 8,
       "%-8s", ccval(p, cc[p->sub]));
   if (++cnt == LINELENGTH / 8) {
    cnt = 0;
    (void)printf("%s\n", buf1);
    (void)printf("%s\n", buf2);
   }
  }
  if (cnt) {
   (void)printf("%s\n", buf1);
   (void)printf("%s\n", buf2);
  }
 }
}
