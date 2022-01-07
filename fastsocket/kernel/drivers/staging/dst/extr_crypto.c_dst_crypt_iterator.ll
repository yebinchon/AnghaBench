; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_crypt_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_crypt_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_crypto_engine = type { i32, i32, i32, %struct.ablkcipher_request* }
%struct.ablkcipher_request = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_crypto_engine*, %struct.scatterlist*, %struct.scatterlist*)* @dst_crypt_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_crypt_iterator(%struct.dst_crypto_engine* %0, %struct.scatterlist* %1, %struct.scatterlist* %2) #0 {
  %4 = alloca %struct.dst_crypto_engine*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.ablkcipher_request*, align 8
  %8 = alloca [32 x i32], align 16
  store %struct.dst_crypto_engine* %0, %struct.dst_crypto_engine** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %6, align 8
  %9 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %10 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %9, i32 0, i32 3
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %10, align 8
  store %struct.ablkcipher_request* %11, %struct.ablkcipher_request** %7, align 8
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %13 = call i32 @memset(i32* %12, i32 0, i32 128)
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %15 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %16 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %15, i32 0, i32 2
  %17 = call i32 @memcpy(i32* %14, i32* %16, i32 4)
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %22 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %23 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %26 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dst_crypto_process(%struct.ablkcipher_request* %18, %struct.scatterlist* %19, %struct.scatterlist* %20, i32* %21, i32 %24, i32 %27)
  ret i32 %28
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dst_crypto_process(%struct.ablkcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
