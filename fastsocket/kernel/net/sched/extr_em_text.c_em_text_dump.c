
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct text_match {TYPE_2__* config; int to_layer; int from_layer; int to_offset; int from_offset; } ;
struct tcf_ematch {int dummy; } ;
struct tcf_em_text {int pattern_len; scalar_t__ pad; int to_layer; int from_layer; int to_offset; int from_offset; int algo; } ;
struct sk_buff {int dummy; } ;
typedef int conf ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int name; } ;


 struct text_match* EM_TEXT_PRIV (struct tcf_ematch*) ;
 scalar_t__ nla_append (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_nohdr (struct sk_buff*,int,struct tcf_em_text*) ;
 int strncpy (int ,int ,int) ;
 int textsearch_get_pattern (TYPE_2__*) ;
 int textsearch_get_pattern_len (TYPE_2__*) ;

__attribute__((used)) static int em_text_dump(struct sk_buff *skb, struct tcf_ematch *m)
{
 struct text_match *tm = EM_TEXT_PRIV(m);
 struct tcf_em_text conf;

 strncpy(conf.algo, tm->config->ops->name, sizeof(conf.algo) - 1);
 conf.from_offset = tm->from_offset;
 conf.to_offset = tm->to_offset;
 conf.from_layer = tm->from_layer;
 conf.to_layer = tm->to_layer;
 conf.pattern_len = textsearch_get_pattern_len(tm->config);
 conf.pad = 0;

 if (nla_put_nohdr(skb, sizeof(conf), &conf) < 0)
  goto nla_put_failure;
 if (nla_append(skb, conf.pattern_len,
         textsearch_get_pattern(tm->config)) < 0)
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
