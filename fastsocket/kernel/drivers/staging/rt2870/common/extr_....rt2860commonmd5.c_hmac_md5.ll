; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonmd5.c_hmac_md5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonmd5.c_hmac_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hmac_md5(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [65 x i32], align 16
  %13 = alloca [65 x i32], align 16
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %17, 64
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = call i32 @MD5Init(i32* %16)
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @MD5Update(i32* %16, i32* %21, i32 %23)
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %26 = call i32 @MD5Final(i32* %25, i32* %16)
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  store i32* %27, i32** %6, align 8
  store i64 16, i64* %7, align 8
  br label %28

28:                                               ; preds = %19, %5
  %29 = getelementptr inbounds [65 x i32], [65 x i32]* %12, i64 0, i64 0
  %30 = call i32 @NdisZeroMemory(i32* %29, i32 260)
  %31 = getelementptr inbounds [65 x i32], [65 x i32]* %13, i64 0, i64 0
  %32 = call i32 @NdisZeroMemory(i32* %31, i32 260)
  %33 = getelementptr inbounds [65 x i32], [65 x i32]* %12, i64 0, i64 0
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @NdisMoveMemory(i32* %33, i32* %34, i64 %35)
  %37 = getelementptr inbounds [65 x i32], [65 x i32]* %13, i64 0, i64 0
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @NdisMoveMemory(i32* %37, i32* %38, i64 %39)
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %55, %28
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 64
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [65 x i32], [65 x i32]* %12, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, 54
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [65 x i32], [65 x i32]* %13, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, 92
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %41

58:                                               ; preds = %41
  %59 = call i32 @MD5Init(i32* %11)
  %60 = getelementptr inbounds [65 x i32], [65 x i32]* %12, i64 0, i64 0
  %61 = call i32 @MD5Update(i32* %11, i32* %60, i32 64)
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @MD5Update(i32* %11, i32* %62, i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @MD5Final(i32* %66, i32* %11)
  %68 = call i32 @MD5Init(i32* %11)
  %69 = getelementptr inbounds [65 x i32], [65 x i32]* %13, i64 0, i64 0
  %70 = call i32 @MD5Update(i32* %11, i32* %69, i32 64)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @MD5Update(i32* %11, i32* %71, i32 16)
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @MD5Final(i32* %73, i32* %11)
  ret void
}

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @NdisZeroMemory(i32*, i32) #1

declare dso_local i32 @NdisMoveMemory(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
