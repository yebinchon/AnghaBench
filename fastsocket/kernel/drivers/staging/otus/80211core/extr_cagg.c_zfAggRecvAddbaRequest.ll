; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRecvAddbaRequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRecvAddbaRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggBaFrameParameter = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"Recv ADDBA Req:\00", align 1
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfAggRecvAddbaRequest(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aggBaFrameParameter, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 7
  store i32* %7, i32** %8, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @zmw_rx_buf_readb(i32* %9, i32* %10, i32 26)
  %12 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 6
  store i32 %11, i32* %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @zmw_rx_buf_readh(i32* %13, i32* %14, i32 27)
  %16 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 1
  %20 = and i32 %19, 1
  %21 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 2
  %25 = and i32 %24, 15
  %26 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 6
  %30 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @zmw_rx_buf_readh(i32* %31, i32* %32, i32 29)
  %34 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @zmw_rx_buf_readh(i32* %35, i32* %36, i32 31)
  %38 = ashr i32 %37, 4
  %39 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %5, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  store i32 26, i32* %6, align 4
  br label %40

40:                                               ; preds = %43, %2
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @zmw_rx_buf_readb(i32* %44, i32* %45, i32 %46)
  %48 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %40

51:                                               ; preds = %40
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @zfAggSendAddbaResponse(i32* %52, %struct.aggBaFrameParameter* %5)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @zfAggAddbaSetTidRx(i32* %54, i32* %55, %struct.aggBaFrameParameter* %5)
  %57 = load i32, i32* @ZM_SUCCESS, align 4
  ret i32 %57
}

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zm_debug_msg2(i8*, i32) #1

declare dso_local i32 @zfAggSendAddbaResponse(i32*, %struct.aggBaFrameParameter*) #1

declare dso_local i32 @zfAggAddbaSetTidRx(i32*, i32*, %struct.aggBaFrameParameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
