
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct dquot {int dq_hash; int dq_type; int dq_id; int dq_sb; } ;


 struct hlist_head* dquot_hash ;
 int hashfn (int ,int ,int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;

__attribute__((used)) static inline void insert_dquot_hash(struct dquot *dquot)
{
 struct hlist_head *head;
 head = dquot_hash + hashfn(dquot->dq_sb, dquot->dq_id, dquot->dq_type);
 hlist_add_head(&dquot->dq_hash, head);
}
