; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_rt_pci_rbus.c_ac1_dma_done_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_rt_pci_rbus.c_ac1_dma_done_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@fRTMP_ADAPTER_HALT_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@INT_AC1_DLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ac1_dma_done_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac1_dma_done_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %12 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_10__* %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @INT_AC1_DLY, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = bitcast %struct.TYPE_12__* %5 to { i32, i64 }*
  %33 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %32, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @RTMPHandleTxRingDmaDoneInterrupt(%struct.TYPE_10__* %31, i32 %34, i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @RTMP_INT_LOCK(i32* %39, i64 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @INT_AC1_DLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %17
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48, %17
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = call i32 @tasklet_hi_schedule(i32* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @RTMP_INT_UNLOCK(i32* %56, i64 %57)
  br label %67

59:                                               ; preds = %48
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = load i32, i32* @INT_AC1_DLY, align 4
  %62 = call i32 @rt2860_int_enable(%struct.TYPE_10__* %60, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @RTMP_INT_UNLOCK(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %59, %51, %16
  ret void
}

declare dso_local i64 @RTMP_TEST_FLAG(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @RTMPHandleTxRingDmaDoneInterrupt(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @RTMP_INT_LOCK(i32*, i64) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @RTMP_INT_UNLOCK(i32*, i64) #1

declare dso_local i32 @rt2860_int_enable(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
