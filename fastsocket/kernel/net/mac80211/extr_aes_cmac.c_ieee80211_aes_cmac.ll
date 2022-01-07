; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_cmac.c_ieee80211_aes_cmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_cmac.c_ieee80211_aes_cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }

@CMAC_TLEN = common dso_local global i32 0, align 4
@AAD_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_aes_cmac(%struct.crypto_cipher* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_cipher*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [3 x i32*], align 16
  %12 = alloca [3 x i64], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* @CMAC_TLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = load i32, i32* @CMAC_TLEN, align 4
  %20 = call i32 @memset(i32* %18, i32 0, i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  store i32* %21, i32** %22, align 16
  %23 = load i64, i64* @AAD_LEN, align 8
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 1
  store i32* %25, i32** %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* @CMAC_TLEN, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %27, %29
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  store i32* %18, i32** %32, align 16
  %33 = load i32, i32* @CMAC_TLEN, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  store i64 %34, i64* %35, align 16
  %36 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %37 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @aes_128_cmac_vector(%struct.crypto_cipher* %36, i32 3, i32** %37, i64* %38, i32* %39)
  %41 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @aes_128_cmac_vector(%struct.crypto_cipher*, i32, i32**, i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
