; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_tmp_givreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_tmp_givreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_givcrypt_request = type { i32 }
%struct.crypto_aead = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aead_givcrypt_request* (%struct.crypto_aead*, i32*)* @esp_tmp_givreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aead_givcrypt_request* @esp_tmp_givreq(%struct.crypto_aead* %0, i32* %1) #0 {
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aead_givcrypt_request*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %8 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %7)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = call i32 (...) @crypto_tfm_ctx_alignment()
  %12 = call i64 @PTR_ALIGN(i32* %10, i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.aead_givcrypt_request*
  store %struct.aead_givcrypt_request* %14, %struct.aead_givcrypt_request** %5, align 8
  %15 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %5, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %17 = call i32 @aead_givcrypt_set_tfm(%struct.aead_givcrypt_request* %15, %struct.crypto_aead* %16)
  %18 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %5, align 8
  ret %struct.aead_givcrypt_request* %18
}

declare dso_local i64 @PTR_ALIGN(i32*, i32) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @aead_givcrypt_set_tfm(%struct.aead_givcrypt_request*, %struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
