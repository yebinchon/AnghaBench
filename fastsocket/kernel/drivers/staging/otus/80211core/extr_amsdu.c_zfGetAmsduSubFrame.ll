; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_amsdu.c_zfGetAmsduSubFrame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_amsdu.c_zfGetAmsduSubFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfGetAmsduSubFrame(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @zfwBufGetSize(i32* %11, i32* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @ZM_PERFORMANCE_RX_AMSDU(i32* %14, i32* %15, i64 %16)
  %18 = load i64, i64* %9, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 14
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %85

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 12
  %30 = call i32 @zmw_buf_readb(i32* %25, i32* %26, i64 %29)
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 13
  %37 = call i32 @zmw_buf_readb(i32* %32, i32* %33, i64 %36)
  %38 = add nsw i32 %31, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i32* null, i32** %4, align 8
  br label %85

43:                                               ; preds = %24
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 14
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* %9, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 26, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32* @zfwBufAllocate(i32* %52, i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %83

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 14, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @zfRxBufferCopy(i32* %60, i32* %61, i32* %62, i32 0, i64 %64, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 14, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @zfwBufSetSize(i32* %69, i32* %70, i32 %73)
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 14, %75
  %77 = add nsw i64 %76, 3
  %78 = and i64 %77, 65532
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %78
  store i64 %81, i64* %79, align 8
  %82 = load i32*, i32** %10, align 8
  store i32* %82, i32** %4, align 8
  br label %85

83:                                               ; preds = %51
  br label %84

84:                                               ; preds = %83, %43
  store i32* null, i32** %4, align 8
  br label %85

85:                                               ; preds = %84, %59, %42, %23
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

declare dso_local i64 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @ZM_PERFORMANCE_RX_AMSDU(i32*, i32*, i64) #1

declare dso_local i32 @zmw_buf_readb(i32*, i32*, i64) #1

declare dso_local i32* @zfwBufAllocate(i32*, i32) #1

declare dso_local i32 @zfRxBufferCopy(i32*, i32*, i32*, i32, i64, i32) #1

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
