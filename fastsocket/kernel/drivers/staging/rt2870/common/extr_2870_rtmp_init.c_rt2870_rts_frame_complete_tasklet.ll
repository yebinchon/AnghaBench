; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_rts_frame_complete_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_rts_frame_complete_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i8** }
%struct.TYPE_10__ = type { i64, i8*, i8*, %struct.TYPE_11__* }
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
@.str = private unnamed_addr constant [27 x i8] c"Bulk Out RTS Frame Failed\0A\00", align 1
@MGMTPIPEIDX = common dso_local global i32 0, align 4
@BULKOUT_MGMT_RESET_FLAG = common dso_local global i32 0, align 4
@CMDTHREAD_RESET_BULK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rt2870_rts_frame_complete_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2870_rts_frame_complete_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @RTMP_IRQ_LOCK(i32* %23, i64 %24)
  %26 = load i8*, i8** @FALSE, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @FALSE, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @USB_ST_NOERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @RTMP_IRQ_UNLOCK(i32* %39, i64 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = load i8*, i8** @FALSE, align 8
  %44 = load i32, i32* @NUM_OF_TX_RING, align 4
  %45 = load i32, i32* @MAX_TX_PROCESS, align 4
  %46 = call i32 @RTMPDeQueuePacket(%struct.TYPE_11__* %42, i8* %43, i32 %44, i32 %45)
  br label %95

47:                                               ; preds = %1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = load i32, i32* @fRTMP_ADAPTER_RESET_IN_PROGRESS, align 4
  %50 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %87, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %55 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %60 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %65 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %69 = call i32 @DBGPRINT_RAW(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %72 = call i32 @RTMP_SET_FLAG(%struct.TYPE_11__* %70, i32 %71)
  %73 = load i32, i32* @MGMTPIPEIDX, align 4
  %74 = load i32, i32* @BULKOUT_MGMT_RESET_FLAG, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @RTMP_IRQ_UNLOCK(i32* %81, i64 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = load i32, i32* @CMDTHREAD_RESET_BULK_OUT, align 4
  %86 = call i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_11__* %84, i32 %85, i32* null, i32 0)
  br label %94

87:                                               ; preds = %62, %57, %52, %47
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @RTMP_IRQ_UNLOCK(i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %87, %67
  br label %95

95:                                               ; preds = %94, %35
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = call i32 @RTMP_SEM_LOCK(i32* %102)
  %104 = load i8*, i8** @FALSE, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i8**, i8*** %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  store i8* %104, i8** %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = call i32 @RTMP_SEM_UNLOCK(i32* %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = call i32 @RTUSBKickBulkOut(%struct.TYPE_11__* %120)
  ret void
}

declare dso_local i32 @RTMP_IRQ_LOCK(i32*, i64) #1

declare dso_local i32 @RTMP_IRQ_UNLOCK(i32*, i64) #1

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
