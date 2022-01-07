; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_ccm.c_aes_ccm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_ccm.c_aes_ccm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_cipher*, i32*, i32*)* @aes_ccm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_ccm_prepare(%struct.crypto_cipher* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_cipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %14 = mul nsw i32 3, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %19 = mul nsw i32 4, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %11, align 8
  %27 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %27, i32* %28, i32* %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %47, %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %51, i32* %52, i32* %53)
  %55 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %75, %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %79, i32* %80, i32* %81)
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 7
  store i32 %86, i32* %84, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 14
  store i32 0, i32* %88, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 15
  store i32 0, i32* %90, align 4
  %91 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %91, i32* %92, i32* %93)
  ret void
}

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
