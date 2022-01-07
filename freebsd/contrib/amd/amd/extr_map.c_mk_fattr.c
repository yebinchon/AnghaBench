
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nfsftype ;
struct TYPE_3__ {int na_type; int na_mode; int na_nlink; int na_size; } ;
typedef TYPE_1__ nfsfattr ;




 int NFSMODE_DIR ;
 int NFSMODE_LNK ;
 int XLOG_FATAL ;
 int plog (int ,char*,int) ;

void
mk_fattr(nfsfattr *fattr, nfsftype vntype)
{
  switch (vntype) {
  case 129:
    fattr->na_type = 129;
    fattr->na_mode = NFSMODE_DIR | 0555;
    fattr->na_nlink = 2;
    fattr->na_size = 512;
    break;
  case 128:
    fattr->na_type = 128;
    fattr->na_mode = NFSMODE_LNK | 0777;
    fattr->na_nlink = 1;
    fattr->na_size = 0;
    break;
  default:
    plog(XLOG_FATAL, "Unknown fattr type %d - ignored", vntype);
    break;
  }
}
