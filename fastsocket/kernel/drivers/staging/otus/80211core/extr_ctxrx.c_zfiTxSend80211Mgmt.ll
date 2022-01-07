; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfiTxSend80211Mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfiTxSend80211Mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfiTxSend80211Mgmt(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [25 x i32], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %23, %3
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @zmw_buf_readh(i32* %16, i32* %17, i32 %18)
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [25 x i32], [25 x i32]* %10, i64 0, i64 %21
  store i32 %19, i32* %22, align 4
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  br label %12

26:                                               ; preds = %12
  store i32 24, i32* %9, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @zfwBufRemoveHead(i32* %27, i32* %28, i32 24)
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds [25 x i32], [25 x i32]* %10, i64 0, i64 0
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %35 = call i32 @zfHpSend(i32* %30, i32* %31, i32 %32, i32* null, i32 0, i32* null, i32 0, i32* %33, i32 0, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @ZM_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %44

40:                                               ; preds = %38
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @zfwBufFree(i32* %41, i32* %42, i32 0)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %39
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @zmw_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zfwBufRemoveHead(i32*, i32*, i32) #1

declare dso_local i32 @zfHpSend(i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
