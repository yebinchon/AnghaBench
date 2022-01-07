
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct blacklist {int dummy; } ;
typedef int socklen_t ;






 int BL_ABUSE ;
 int BL_ADD ;
 int BL_BADUSER ;
 int BL_DELETE ;
 int BL_INVALID ;
 int bl_send (struct blacklist*,int,int,struct sockaddr const*,int ,char const*) ;

int
blacklist_sa_r(struct blacklist *bl, int action, int rfd,
 const struct sockaddr *sa, socklen_t slen, const char *msg)
{
 int internal_action;


 switch (action) {
 case 130:
  internal_action = BL_ADD;
  break;
 case 129:
  internal_action = BL_DELETE;
  break;
 case 131:
  internal_action = BL_ABUSE;
  break;
 case 128:
  internal_action = BL_BADUSER;
  break;
 default:
  internal_action = BL_INVALID;
  break;
 }
 return bl_send(bl, internal_action, rfd, sa, slen, msg);
}
