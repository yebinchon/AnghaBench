; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_ccm.c_ieee80211_aes_key_setup_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_ccm.c_ieee80211_aes_key_setup_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@ALG_CCMP_KEY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_cipher* @ieee80211_aes_key_setup_encrypt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.crypto_cipher*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %5 = call %struct.crypto_cipher* @crypto_alloc_cipher(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 %4)
  store %struct.crypto_cipher* %5, %struct.crypto_cipher** %3, align 8
  %6 = load %struct.crypto_cipher*, %struct.crypto_cipher** %3, align 8
  %7 = call i32 @IS_ERR(%struct.crypto_cipher* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.crypto_cipher*, %struct.crypto_cipher** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @ALG_CCMP_KEY_LEN, align 4
  %13 = call i32 @crypto_cipher_setkey(%struct.crypto_cipher* %10, i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.crypto_cipher*, %struct.crypto_cipher** %3, align 8
  ret %struct.crypto_cipher* %15
}

declare dso_local %struct.crypto_cipher* @crypto_alloc_cipher(i8*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.crypto_cipher*) #1

declare dso_local i32 @crypto_cipher_setkey(%struct.crypto_cipher*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
