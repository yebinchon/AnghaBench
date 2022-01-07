; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rx_done_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rx_done_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_9__*, i8*, i64, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@USB_ST_NOERROR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_RESET_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_BULKIN_RESET = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_HALT_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Bulk In Failed. Status=%d, BIIdx=0x%x, BIRIdx=0x%x, actual_length= 0x%x\0A\00", align 1
@CMDTHREAD_RESET_BULK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rx_done_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_done_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @RTMP_IRQ_LOCK(i32* %21, i32 %22)
  %24 = load i8*, i8** @FALSE, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** @FALSE, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @USB_ST_NOERROR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load i8*, i8** @TRUE, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RX_RING_SIZE, align 4
  %65 = call i32 @INC_RING_INDEX(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %46
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @RTMP_IRQ_UNLOCK(i32* %68, i32 %69)
  br label %117

71:                                               ; preds = %1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i8*, i8** @FALSE, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @RTMP_IRQ_UNLOCK(i32* %80, i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = load i32, i32* @fRTMP_ADAPTER_RESET_IN_PROGRESS, align 4
  %85 = load i32, i32* @fRTMP_ADAPTER_BULKIN_RESET, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_12__* %83, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %71
  %94 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @DBGPRINT_RAW(i32 %94, i8* %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = load i32, i32* @fRTMP_ADAPTER_BULKIN_RESET, align 4
  %112 = call i32 @RTMP_SET_FLAG(%struct.TYPE_12__* %110, i32 %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = load i32, i32* @CMDTHREAD_RESET_BULK_IN, align 4
  %115 = call i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_12__* %113, i32 %114, i32* null, i32 0)
  br label %116

116:                                              ; preds = %93, %71
  br label %117

117:                                              ; preds = %116, %66
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @ASSERT(i32 %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = call i32 @RTUSBBulkReceive(%struct.TYPE_12__* %127)
  ret void
}

declare dso_local i32 @RTMP_IRQ_LOCK(i32*, i32) #1

declare dso_local i32 @INC_RING_INDEX(i32, i32) #1

declare dso_local i32 @RTMP_IRQ_UNLOCK(i32*, i32) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DBGPRINT_RAW(i32, i8*) #1

declare dso_local i32 @RTMP_SET_FLAG(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RTUSBBulkReceive(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
