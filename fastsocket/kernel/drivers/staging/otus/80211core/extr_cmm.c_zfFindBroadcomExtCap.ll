; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindBroadcomExtCap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindBroadcomExtCap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zgElementOffsetTable = common dso_local global i32* null, align 8
@ZM_WLAN_EID_WIFI_IE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFindBroadcomExtCap(i32* %0, i32* %1) #0 {
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

30:                                               ; preds = %93, %24
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 2
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @zmw_rx_buf_readb(i32* %36, i32* %37, i32 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* @ZM_WLAN_EID_WIFI_IE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %35
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @zmw_rx_buf_readb(i32* %44, i32* %45, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 65535, i32* %3, align 4
  br label %99

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 65535, i32* %3, align 4
  br label %99

58:                                               ; preds = %54
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 2
  %63 = call i32 @zmw_rx_buf_readb(i32* %59, i32* %60, i32 %62)
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %11, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %58
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 3
  %71 = call i32 @zmw_rx_buf_readb(i32* %67, i32* %68, i32 %70)
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %11, align 8
  %73 = icmp eq i64 %72, 16
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 4
  %79 = call i32 @zmw_rx_buf_readb(i32* %75, i32* %76, i32 %78)
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %11, align 8
  %81 = icmp eq i64 %80, 24
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %99

84:                                               ; preds = %74, %66, %58
  br label %85

85:                                               ; preds = %84, %35
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @zmw_rx_buf_readb(i32* %86, i32* %87, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 65535, i32* %3, align 4
  br label %99

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 2
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %30

98:                                               ; preds = %30
  store i32 65535, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %92, %82, %57, %53
  %100 = load i32, i32* %3, align 4
  ret i32 %100
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
