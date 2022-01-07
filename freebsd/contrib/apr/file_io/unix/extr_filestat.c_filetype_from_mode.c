
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int apr_filetype_e ;


 int APR_BLK ;
 int APR_CHR ;
 int APR_DIR ;
 int APR_LNK ;
 int APR_PIPE ;
 int APR_REG ;
 int APR_SOCK ;
 int APR_UNKFILE ;





 int S_IFMT ;


 int S_ISFIFO (int) ;
 int S_ISSOCK (int) ;

__attribute__((used)) static apr_filetype_e filetype_from_mode(mode_t mode)
{
    apr_filetype_e type;

    switch (mode & S_IFMT) {
    case 129:
        type = APR_REG; break;
    case 132:
        type = APR_DIR; break;
    case 130:
        type = APR_LNK; break;
    case 133:
        type = APR_CHR; break;
    case 134:
        type = APR_BLK; break;

    case 131:
        type = APR_PIPE; break;


    case 128:
        type = APR_SOCK; break;


    default:
        type = APR_UNKFILE;
    }
    return type;
}
