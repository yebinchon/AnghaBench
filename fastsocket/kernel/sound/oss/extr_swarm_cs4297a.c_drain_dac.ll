; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_swarm_cs4297a.c_drain_dac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_swarm_cs4297a.c_drain_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cs4297a_state = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@R_SER_DMA_DSCR_COUNT_TX = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@FRAME_TX_US = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@R_SER_DMA_CUR_DSCR_ADDR_TX = common dso_local global i32 0, align 4
@M_DMA_CURDSCR_ADDR = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs4297a_state*, i32)* @drain_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drain_dac(%struct.cs4297a_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs4297a_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cs4297a_state* %0, %struct.cs4297a_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @wait, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %12 = call i32 @DECLARE_WAITQUEUE(i32 %10, %struct.TYPE_6__* %11)
  %13 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %14 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %97

25:                                               ; preds = %19
  %26 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %27 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = call i32 @add_wait_queue(i32* %28, i32* @wait)
  br label %30

30:                                               ; preds = %60, %25
  %31 = load i32, i32* @R_SER_DMA_DSCR_COUNT_TX, align 4
  %32 = call i32 @SS_CSR(i32 %31)
  %33 = call i32 @__raw_readq(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %37 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ true, %30 ], [ %40, %35 ]
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %45 = call i32 @signal_pending(%struct.TYPE_6__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %49 = call i32 @set_current_state(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @FRAME_TX_US, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sdiv i32 %54, 1000000
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  %58 = call i32 @schedule_timeout(i32 %57)
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %47
  br label %30

61:                                               ; preds = %41
  %62 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %63 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %62, i32 0, i32 1
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load i32, i32* @R_SER_DMA_CUR_DSCR_ADDR_TX, align 4
  %67 = call i32 @SS_CSR(i32 %66)
  %68 = call i32 @__raw_readq(i32 %67)
  %69 = load i32, i32* @M_DMA_CURDSCR_ADDR, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %72 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %70, %74
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 4
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %81 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 8
  %83 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %84 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i32 %79, i32* %85, align 4
  %86 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %87 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %86, i32 0, i32 1
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load %struct.cs4297a_state*, %struct.cs4297a_state** %4, align 8
  %91 = getelementptr inbounds %struct.cs4297a_state, %struct.cs4297a_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = call i32 @remove_wait_queue(i32* %92, i32* @wait)
  %94 = load i32, i32* @TASK_RUNNING, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %61, %22, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @SS_CSR(i32) #1

declare dso_local i32 @signal_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
