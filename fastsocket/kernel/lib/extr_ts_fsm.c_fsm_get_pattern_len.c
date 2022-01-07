
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_fsm_token {int dummy; } ;
struct ts_fsm {int ntokens; } ;
struct ts_config {int dummy; } ;


 struct ts_fsm* ts_config_priv (struct ts_config*) ;

__attribute__((used)) static unsigned int fsm_get_pattern_len(struct ts_config *conf)
{
 struct ts_fsm *fsm = ts_config_priv(conf);
 return fsm->ntokens * sizeof(struct ts_fsm_token);
}
