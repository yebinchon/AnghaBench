; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggSendAddbaResponse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggSendAddbaResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggBaFrameParameter = type { i32 }

@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Alloc mm buf Fail!\00", align 1
@ZM_SUCCESS = common dso_local global i32 0, align 4
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfAggSendAddbaResponse(i32* %0, %struct.aggBaFrameParameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aggBaFrameParameter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [25 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  store i32* %0, i32** %4, align 8
  store %struct.aggBaFrameParameter* %1, %struct.aggBaFrameParameter** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 32, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @zfwBufAllocate(i32* %14, i32 1024)
  store i32* %15, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ZM_LV_0, align 4
  %19 = call i32 @zm_msg0_mm(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %20, i32* %3, align 4
  br label %85

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.aggBaFrameParameter*, %struct.aggBaFrameParameter** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @zfAggSetAddbaResponseFrameBody(i32* %23, i32* %24, %struct.aggBaFrameParameter* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @zfwBufSetSize(i32* %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.aggBaFrameParameter*, %struct.aggBaFrameParameter** %5, align 8
  %34 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @zmw_rx_buf_readh(i32* %32, i32 %35, i32 10)
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.aggBaFrameParameter*, %struct.aggBaFrameParameter** %5, align 8
  %40 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @zmw_rx_buf_readh(i32* %38, i32 %41, i32 12)
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.aggBaFrameParameter*, %struct.aggBaFrameParameter** %5, align 8
  %46 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @zmw_rx_buf_readh(i32* %44, i32 %47, i32 14)
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %52 = getelementptr inbounds [25 x i32], [25 x i32]* %9, i64 0, i64 0
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @zfAggGenAddbaHeader(i32* %50, i32* %51, i32* %52, i32 %55, i32* %56, i32 %57, i32 %58)
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %75, %21
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 1
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %68, 2
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [25 x i32], [25 x i32]* %9, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @zmw_tx_buf_writeh(i32* %66, i32* %67, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %60

78:                                               ; preds = %60
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @zfPutVmmq(i32* %79, i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @zfPushVtxq(i32* %82)
  %84 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32* @zfwBufAllocate(i32*, i32) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfAggSetAddbaResponseFrameBody(i32*, i32*, %struct.aggBaFrameParameter*, i32) #1

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32, i32) #1

declare dso_local i32 @zfAggGenAddbaHeader(i32*, i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @zmw_tx_buf_writeh(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfPutVmmq(i32*, i32*) #1

declare dso_local i32 @zfPushVtxq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
