; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_pspoll_frame_complete_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_pspoll_frame_complete_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i8**, i64* }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i64 }

@FALSE = common dso_local global i8* null, align 8
@USB_ST_NOERROR = common dso_local global i64 0, align 8
@NUM_OF_TX_RING = common dso_local global i32 0, align 4
@MAX_TX_PROCESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_RESET_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_HALT_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_BULKOUT_RESET = common dso_local global i32 0, align 4
@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Bulk Out PSPoll Failed\0A\00", align 1
@MGMTPIPEIDX = common dso_local global i32 0, align 4
@BULKOUT_MGMT_RESET_FLAG = common dso_local global i32 0, align 4
@CMDTHREAD_RESET_BULK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rt2870_pspoll_frame_complete_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2870_pspoll_frame_complete_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @FALSE, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @USB_ST_NOERROR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load i32, i32* @NUM_OF_TX_RING, align 4
  %36 = load i32, i32* @MAX_TX_PROCESS, align 4
  %37 = call i32 @RTMPDeQueuePacket(%struct.TYPE_11__* %33, i8* %34, i32 %35, i32 %36)
  br label %73

38:                                               ; preds = %1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = load i32, i32* @fRTMP_ADAPTER_RESET_IN_PROGRESS, align 4
  %41 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %46 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %51 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %56 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %60 = call i32 @DBGPRINT_RAW(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %63 = call i32 @RTMP_SET_FLAG(%struct.TYPE_11__* %61, i32 %62)
  %64 = load i32, i32* @MGMTPIPEIDX, align 4
  %65 = load i32, i32* @BULKOUT_MGMT_RESET_FLAG, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load i32, i32* @CMDTHREAD_RESET_BULK_OUT, align 4
  %71 = call i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_11__* %69, i32 %70, i32* null, i32 0)
  br label %72

72:                                               ; preds = %58, %53, %48, %43, %38
  br label %73

73:                                               ; preds = %72, %32
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = call i32 @RTMP_SEM_LOCK(i32* %77)
  %79 = load i8*, i8** @FALSE, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  store i8* %79, i8** %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = call i32 @RTMP_SEM_UNLOCK(i32* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = call i32 @RTUSBKickBulkOut(%struct.TYPE_11__* %89)
  ret void
}

declare dso_local i32 @RTMPDeQueuePacket(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DBGPRINT_RAW(i32, i8*) #1

declare dso_local i32 @RTMP_SET_FLAG(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_11__*, i32, i32*, i32) #1

declare dso_local i32 @RTMP_SEM_LOCK(i32*) #1

declare dso_local i32 @RTMP_SEM_UNLOCK(i32*) #1

declare dso_local i32 @RTUSBKickBulkOut(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
