
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbuf ;
struct opt {int nlen; char** sel_p; char** optp; scalar_t__ name; } ;


 scalar_t__ BUFSPACE (char*,int) ;
 int D_STR ;
 char* EXPAND_ERROR ;
 int MAXPATHLEN ;
 int NLEN ;
 scalar_t__ STREQ (scalar_t__,char*) ;
 int XLOG_DEBUG ;
 int XLOG_ERROR ;
 int XLOG_USER ;
 scalar_t__ amuDebug (int ) ;
 char* getenv (char*) ;
 int memcpy (char*,char*,int) ;
 int normalize_slash (char*) ;
 struct opt* opt_fields ;
 int plog (int ,char*,char*,...) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int xsnprintf (char*,int,char*,char*,char*,char*) ;
 char* xstrdup (char*) ;
 int xstrlcpy (char*,char*,int) ;

__attribute__((used)) static char *
expand_op(char *opt, int sel_p)
{

  char expbuf[MAXPATHLEN + 1];
  char nbuf[NLEN + 1];
  char *ep = expbuf;
  char *cp = opt;
  char *dp;
  struct opt *op;
  char *cp_orig = opt;

  while ((dp = strchr(cp, '$'))) {
    char ch;



    {
      int len = dp - cp;

      if (len > 0) {
 if (BUFSPACE(ep, len)) {




   strncpy(ep, cp, len);
   ep += len;
 } else {
   plog(XLOG_ERROR, "No space to expand \"%s\"", opt);
   goto out;
 }
      }
    }

    cp = dp + 1;
    ch = *cp++;
    if (ch == '$') {
      if (BUFSPACE(ep, 1)) {
 *ep++ = '$';
      } else {
 plog(XLOG_ERROR, "No space to expand \"%s\"", opt);
 goto out;
      }
    } else if (ch == '{') {

      enum {
 E_All, E_Dir, E_File, E_Domain, E_Host
      } todo;



      char *br_p = strchr(cp, '}');
      int len;




      if (!br_p) {



 plog(XLOG_USER, "No closing '}' in \"%s\"", opt);
 goto out;
      }
      len = br_p - cp;




      if (*cp == '/') {



 todo = E_File;
 cp++;
 --len;
      } else if (*(br_p-1) == '/') {



 todo = E_Dir;
 --len;
      } else if (*cp == '.') {



 todo = E_Domain;
 cp++;
 --len;
      } else if (*(br_p-1) == '.') {



 todo = E_Host;
 --len;
      } else {



 todo = E_All;
      }






      if (len > NLEN)
 len = NLEN;
      strncpy(nbuf, cp, len);
      nbuf[len] = '\0';




      cp = br_p + 1;




      for (op = opt_fields; op->name; op++) {



 if (len == op->nlen && STREQ(op->name, nbuf)) {
   char xbuf[NLEN + 3];
   char *val;




   if (!(!op->sel_p == !sel_p)) {



     xsnprintf(xbuf, sizeof(xbuf), "${%s%s%s}",
        todo == E_File ? "/" :
        todo == E_Domain ? "." : "",
        nbuf,
        todo == E_Dir ? "/" :
        todo == E_Host ? "." : "");
     val = xbuf;




     todo = E_All;
   } else if (op->sel_p) {
     val = *op->sel_p;
   } else {
     val = *op->optp;
   }

   if (val) {
     int vlen = strlen(val);
     char *vptr = val;
     switch (todo) {
     case E_Dir:
       vptr = strrchr(val, '/');
       if (vptr)
  vlen = vptr - val;
       vptr = val;
       break;
     case E_File:
       vptr = strrchr(val, '/');
       if (vptr) {
  vptr++;
  vlen = strlen(vptr);
       } else
  vptr = val;
       break;
     case E_Domain:
       vptr = strchr(val, '.');
       if (vptr) {
  vptr++;
  vlen = strlen(vptr);
       } else {
  vptr = "";
  vlen = 0;
       }
       break;
     case E_Host:
       vptr = strchr(val, '.');
       if (vptr)
  vlen = vptr - val;
       vptr = val;
       break;
     case E_All:
       break;
     }

     if (BUFSPACE(ep, vlen+1)) {





       memcpy(ep, vptr, vlen+1);
       ep += vlen;
       *ep = '\0';
     } else {
       plog(XLOG_ERROR, "No space to expand \"%s\"", opt);
       goto out;
     }
   }



   break;
 }
      }




      if (!op->name) {





 char *env = getenv(nbuf);

 if (env) {
   int vlen = strlen(env);

   if (BUFSPACE(ep, vlen+1)) {
     xstrlcpy(ep, env, vlen+1);
     ep += vlen;
   } else {
     plog(XLOG_ERROR, "No space to expand \"%s\"", opt);
     goto out;
   }
   if (amuDebug(D_STR))
     plog(XLOG_DEBUG, "Environment gave \"%s\" -> \"%s\"", nbuf, env);
 } else {
   plog(XLOG_USER, "Unknown sequence \"${%s}\"", nbuf);
 }
      }
    } else {



      plog(XLOG_USER, "Unknown $ sequence in \"%s\"", opt);
    }
  }

out:



  if (cp == opt) {
    opt = xstrdup(cp);
  } else {



    int vlen = strlen(cp);
    if (BUFSPACE(ep, vlen+1)) {
      xstrlcpy(ep, cp, vlen+1);

    } else {
      plog(XLOG_ERROR, "No space to expand \"%s\"", opt);
    }




    opt = xstrdup(expbuf);
  }

  normalize_slash(opt);

  if (amuDebug(D_STR)) {
    plog(XLOG_DEBUG, "Expansion of \"%s\"...", cp_orig);
    plog(XLOG_DEBUG, "......... is \"%s\"", opt);
  }
  return opt;
}
