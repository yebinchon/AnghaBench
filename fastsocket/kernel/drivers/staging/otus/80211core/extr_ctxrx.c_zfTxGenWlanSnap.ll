; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfTxGenWlanSnap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfTxGenWlanSnap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfTxGenWlanSnap(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @zfwBufGetSize(i32* %13, i32* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %60

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @zmw_tx_buf_readb(i32* %21, i32* %22, i32 12)
  %24 = shl i32 %23, 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @zmw_tx_buf_readb(i32* %25, i32* %26, i32 13)
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 1500
  br i1 %30, label %31, label %56

31:                                               ; preds = %20
  store i32 12, i32* %10, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 43690, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 3, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 33079
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 33011
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %31
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 63488, i32* %43, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %9, align 8
  store i32 6, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 34958
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @zfShowTxEAPOL(i32* %52, i32* %53, i32 14)
  br label %55

55:                                               ; preds = %51, %47
  br label %58

56:                                               ; preds = %20
  store i32 14, i32* %10, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %18
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zmw_tx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfShowTxEAPOL(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
