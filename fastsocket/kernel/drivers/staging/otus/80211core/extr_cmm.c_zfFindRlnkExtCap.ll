; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindRlnkExtCap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindRlnkExtCap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zgElementOffsetTable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFindRlnkExtCap(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zmw_rx_buf_readb(i32* %12, i32* %13, i32 0)
  %15 = ashr i32 %14, 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i32*, i32** @zgElementOffsetTable, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @zm_assert(i32 0)
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 24
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @zfwBufGetSize(i32* %27, i32* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %76, %24
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 2
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @zmw_rx_buf_readb(i32* %36, i32* %37, i32 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = icmp eq i64 %40, 127
  br i1 %41, label %42, label %68

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @zmw_rx_buf_readb(i32* %43, i32* %44, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 65535, i32* %3, align 4
  br label %82

53:                                               ; preds = %42
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 65535, i32* %3, align 4
  br label %82

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 2
  %62 = call i32 @zmw_rx_buf_readb(i32* %58, i32* %59, i32 %61)
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = icmp eq i64 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %82

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @zmw_rx_buf_readb(i32* %69, i32* %70, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 65535, i32* %3, align 4
  br label %82

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 2
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %30

81:                                               ; preds = %30
  store i32 65535, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %75, %65, %56, %52
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_assert(i32) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
