; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_reset_play_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_reset_play_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }

@dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DAQDS__size = common dso_local global i32 0, align 4
@JQS_wHead = common dso_local global i64 0, align 8
@JQS_wTail = common dso_local global i64 0, align 8
@DAPQ_DATA_BUFF = common dso_local global i64 0, align 8
@DAP_BUFF_SIZE = common dso_local global i32 0, align 4
@DAQDS_wStart = common dso_local global i64 0, align 8
@DAQDS_wSize = common dso_local global i64 0, align 8
@DAQDS_wFormat = common dso_local global i64 0, align 8
@DAQDS_wSampleSize = common dso_local global i64 0, align 8
@DAQDS_wChannels = common dso_local global i64 0, align 8
@DAQDS_wSampleRate = common dso_local global i64 0, align 8
@HIMT_PLAY_DONE = common dso_local global i32 0, align 4
@DAQDS_wIntMsg = common dso_local global i64 0, align 8
@DAQDS_wFlags = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_play_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_play_queue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %3 = load i32, i32* @DAQDS__size, align 4
  %4 = mul nsw i32 0, %3
  %5 = call i32 @PCTODSP_OFFSET(i32 %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 5), align 8
  %7 = load i64, i64* @JQS_wHead, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writew(i32 %5, i64 %8)
  %10 = load i32, i32* @DAQDS__size, align 4
  %11 = mul nsw i32 0, %10
  %12 = call i32 @PCTODSP_OFFSET(i32 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 5), align 8
  %14 = load i64, i64* @JQS_wTail, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writew(i32 %12, i64 %15)
  store i32 0, i32* %1, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 4), align 8
  %18 = load i64, i64* @DAPQ_DATA_BUFF, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %68, %0
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %75

23:                                               ; preds = %20
  %24 = load i32, i32* @DAP_BUFF_SIZE, align 4
  %25 = load i32, i32* %1, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @PCTODSP_BASED(i32 %26)
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @DAQDS_wStart, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writew(i32 %27, i64 %30)
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @DAQDS_wSize, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writew(i32 0, i64 %34)
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @DAQDS_wFormat, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writew(i32 1, i64 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 4
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @DAQDS_wSampleSize, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writew(i32 %40, i64 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 2), align 8
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @DAQDS_wChannels, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writew(i32 %45, i64 %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 3), align 4
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @DAQDS_wSampleRate, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writew(i32 %50, i64 %53)
  %55 = load i32, i32* @HIMT_PLAY_DONE, align 4
  %56 = mul nsw i32 %55, 256
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @DAQDS_wIntMsg, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writew(i32 %58, i64 %61)
  %63 = load i32, i32* %1, align 4
  %64 = load i64, i64* %2, align 8
  %65 = load i64, i64* @DAQDS_wFlags, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writew(i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %23
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* @DAQDS__size, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %2, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %2, align 8
  br label %20

75:                                               ; preds = %20
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @PCTODSP_OFFSET(i32) #1

declare dso_local i32 @PCTODSP_BASED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
