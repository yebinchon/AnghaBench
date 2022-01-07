
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {struct esp_data* data; } ;
struct esp_data {int aead; } ;


 int crypto_free_aead (int ) ;
 int kfree (struct esp_data*) ;

__attribute__((used)) static void esp6_destroy(struct xfrm_state *x)
{
 struct esp_data *esp = x->data;

 if (!esp)
  return;

 crypto_free_aead(esp->aead);
 kfree(esp);
}
