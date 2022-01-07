; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_hcca_dma_done_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_hcca_dma_done_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64 }

@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"--->hcca_dma_done_tasklet\0A\00", align 1
@fRTMP_ADAPTER_RESET_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_HALT_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_BULKOUT_RESET = common dso_local global i32 0, align 4
@CMDTHREAD_RESET_BULK_OUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MAX_TX_PROCESS = common dso_local global i32 0, align 4
@fRTUSB_BULK_OUT_DATA_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"<---hcca_dma_done_tasklet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rt2870_hcca_dma_done_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2870_hcca_dma_done_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %2, align 8
  store i64 4, i64* %5, align 8
  %7 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %8 = call i32 @DBGPRINT_RAW(i32 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %3, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = ptrtoint %struct.TYPE_11__* %18 to i64
  %20 = call i32 @rt2870_dataout_complete_tasklet(i64 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = load i32, i32* @fRTMP_ADAPTER_RESET_IN_PROGRESS, align 4
  %23 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_12__* %21, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %82

30:                                               ; preds = %1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %33 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_12__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = load i32, i32* @CMDTHREAD_RESET_BULK_OUT, align 4
  %38 = call i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_12__* %36, i32 %37, i32* null, i32 0)
  br label %81

39:                                               ; preds = %30
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 %43
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %4, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %39
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FALSE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FALSE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = load i64, i64* @FALSE, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* @MAX_TX_PROCESS, align 4
  %73 = call i32 @RTMPDeQueuePacket(%struct.TYPE_12__* %69, i64 %70, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %62, %53, %39
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = load i32, i32* @fRTUSB_BULK_OUT_DATA_NORMAL, align 4
  %77 = shl i32 %76, 4
  %78 = call i32 @RTUSB_SET_BULK_FLAG(%struct.TYPE_12__* %75, i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = call i32 @RTUSBKickBulkOut(%struct.TYPE_12__* %79)
  br label %81

81:                                               ; preds = %74, %35
  br label %82

82:                                               ; preds = %81, %29
  %83 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %84 = call i32 @DBGPRINT_RAW(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPRINT_RAW(i32, i8*) #1

declare dso_local i32 @rt2870_dataout_complete_tasklet(i64) #1

declare dso_local i64 @RTMP_TEST_FLAG(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32 @RTMPDeQueuePacket(%struct.TYPE_12__*, i64, i64, i32) #1

declare dso_local i32 @RTUSB_SET_BULK_FLAG(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @RTUSBKickBulkOut(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
