; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfTxGetIpTosAndFrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfTxGetIpTosAndFrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_80211_FRAME_TYPE_OFFSET = common dso_local global i64 0, align 8
@ZM_80211_FRAME_IP_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfTxGetIpTosAndFrag(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @zfwBufGetSize(i32* %15, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sge i32 %18, 34
  br i1 %19, label %20, label %59

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* @ZM_80211_FRAME_TYPE_OFFSET, align 8
  %24 = call i32 @zmw_tx_buf_readb(i32* %21, i32* %22, i64 %23)
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* @ZM_80211_FRAME_TYPE_OFFSET, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @zmw_tx_buf_readb(i32* %26, i32* %27, i64 %29)
  %31 = add nsw i32 %25, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 2048
  br i1 %33, label %34, label %58

34:                                               ; preds = %20
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* @ZM_80211_FRAME_IP_OFFSET, align 8
  %38 = call i32 @zmw_tx_buf_readb(i32* %35, i32* %36, i64 %37)
  %39 = ashr i32 %38, 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* @ZM_80211_FRAME_IP_OFFSET, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @zmw_tx_buf_readb(i32* %43, i32* %44, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 5
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* @ZM_80211_FRAME_IP_OFFSET, align 8
  %54 = add nsw i64 %53, 6
  %55 = call i32 @zmw_tx_buf_readh(i32* %51, i32* %52, i64 %54)
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %42, %34
  br label %58

58:                                               ; preds = %57, %20
  br label %59

59:                                               ; preds = %58, %4
  ret void
}

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zmw_tx_buf_readb(i32*, i32*, i64) #1

declare dso_local i32 @zmw_tx_buf_readh(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
