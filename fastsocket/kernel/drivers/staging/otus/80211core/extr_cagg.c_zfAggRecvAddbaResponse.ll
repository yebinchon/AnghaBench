; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRecvAddbaResponse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRecvAddbaResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.aggBaFrameParameter = type { i32, i32, i32, i32, i8*, i8*, i32, i32* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Recv ADDBA Rsp:\00", align 1
@zcUpToAc = common dso_local global i32* null, align 8
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfAggRecvAddbaResponse(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.aggBaFrameParameter, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @zmw_rx_buf_readh(i32* %12, i32* %13, i32 10)
  %15 = ptrtoint i8* %14 to i32
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @zmw_rx_buf_readh(i32* %17, i32* %18, i32 12)
  %20 = ptrtoint i8* %19 to i32
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @zmw_rx_buf_readh(i32* %22, i32* %23, i32 14)
  %25 = ptrtoint i8* %24 to i32
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ZM_MODE_AP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %35 = call i32 @zfApFindSta(i32* %33, i32* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 7
  store i32* %37, i32** %38, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @zmw_rx_buf_readb(i32* %39, i32* %40, i32 26)
  %42 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 6
  store i32 %41, i32* %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @zmw_rx_buf_readh(i32* %43, i32* %44, i32 27)
  %46 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 5
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %36
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i8* @zmw_rx_buf_readh(i32* %54, i32* %55, i32 29)
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 1
  %62 = and i32 %61, 1
  %63 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 2
  %67 = and i32 %66, 15
  %68 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 6
  %72 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i8* @zmw_rx_buf_readh(i32* %73, i32* %74, i32 31)
  %76 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 4
  store i8* %75, i8** %76, align 8
  store i32 26, i32* %5, align 4
  br label %77

77:                                               ; preds = %80, %53
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 32
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32*, i32** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @zmw_rx_buf_readb(i32* %81, i32* %82, i32 %83)
  %85 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %77

88:                                               ; preds = %77
  %89 = load i32*, i32** @zcUpToAc, align 8
  %90 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %9, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 7
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 3
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @ZM_SUCCESS, align 4
  ret i32 %97
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i8* @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_debug_msg2(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
