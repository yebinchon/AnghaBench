; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_esp6.c_esp_tmp_iv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_esp6.c_esp_tmp_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.crypto_aead*, i8*)* @esp_tmp_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @esp_tmp_iv(%struct.crypto_aead* %0, i8* %1) #0 {
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i8*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %6 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %11 = call i64 @crypto_aead_alignmask(%struct.crypto_aead* %10)
  %12 = add nsw i64 %11, 1
  %13 = call i8* @PTR_ALIGN(i8* %9, i64 %12)
  br label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i8* [ %13, %8 ], [ %15, %14 ]
  ret i8* %17
}

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i8* @PTR_ALIGN(i8*, i64) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
