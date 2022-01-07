; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_rt_pci_rbus.c_fifo_statistic_full_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_rt_pci_rbus.c_fifo_statistic_full_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@fRTMP_ADAPTER_HALT_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@FifoStaFullInt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fifo_statistic_full_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %10 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_6__* %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %5, align 8
  %20 = load i32, i32* @FifoStaFullInt, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = call i32 @NICUpdateFifoStaCounters(%struct.TYPE_6__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @RTMP_INT_LOCK(i32* %29, i64 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FifoStaFullInt, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %15
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @tasklet_hi_schedule(i32* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @RTMP_INT_UNLOCK(i32* %43, i64 %44)
  br label %54

46:                                               ; preds = %15
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = load i32, i32* @FifoStaFullInt, align 4
  %49 = call i32 @rt2860_int_enable(%struct.TYPE_6__* %47, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @RTMP_INT_UNLOCK(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %46, %38, %14
  ret void
}

declare dso_local i64 @RTMP_TEST_FLAG(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @NICUpdateFifoStaCounters(%struct.TYPE_6__*) #1

declare dso_local i32 @RTMP_INT_LOCK(i32*, i64) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @RTMP_INT_UNLOCK(i32*, i64) #1

declare dso_local i32 @rt2860_int_enable(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
