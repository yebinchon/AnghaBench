; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_crypto_engine = type { i64, i32, %struct.ablkcipher_request* }
%struct.ablkcipher_request = type { i32 }
%struct.bio = type { i32 }

@dst_crypt_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_crypto_engine*, %struct.bio*)* @dst_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_crypt(%struct.dst_crypto_engine* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_crypto_engine*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  store %struct.dst_crypto_engine* %0, %struct.dst_crypto_engine** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %7 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %8 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %7, i32 0, i32 2
  %9 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  store %struct.ablkcipher_request* %9, %struct.ablkcipher_request** %6, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %11 = call i32 @memset(%struct.ablkcipher_request* %10, i32 0, i32 4)
  %12 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %13 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %14 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %12, i32 %15)
  %17 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %18 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %24 = load i32, i32* @dst_crypt_iterator, align 4
  %25 = call i32 @dst_trans_iter_out(%struct.bio* %22, %struct.dst_crypto_engine* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %29 = load i32, i32* @dst_crypt_iterator, align 4
  %30 = call i32 @dst_trans_iter_in(%struct.bio* %27, %struct.dst_crypto_engine* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.ablkcipher_request*, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @dst_trans_iter_out(%struct.bio*, %struct.dst_crypto_engine*, i32) #1

declare dso_local i32 @dst_trans_iter_in(%struct.bio*, %struct.dst_crypto_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
