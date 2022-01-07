; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32, i32, i32 }

@rfcomm_dlc_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rfcomm_dlc* @rfcomm_dlc_alloc(i32 %0) #0 {
  %2 = alloca %struct.rfcomm_dlc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfcomm_dlc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.rfcomm_dlc* @kzalloc(i32 16, i32 %5)
  store %struct.rfcomm_dlc* %6, %struct.rfcomm_dlc** %4, align 8
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %8 = icmp ne %struct.rfcomm_dlc* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.rfcomm_dlc* null, %struct.rfcomm_dlc** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %12 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %11, i32 0, i32 3
  %13 = load i32, i32* @rfcomm_dlc_timeout, align 4
  %14 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %15 = ptrtoint %struct.rfcomm_dlc* %14 to i64
  %16 = call i32 @setup_timer(i32* %12, i32 %13, i64 %15)
  %17 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %18 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %17, i32 0, i32 2
  %19 = call i32 @skb_queue_head_init(i32* %18)
  %20 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %21 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %24 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %23, i32 0, i32 0
  %25 = call i32 @atomic_set(i32* %24, i32 1)
  %26 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %27 = call i32 @rfcomm_dlc_clear_state(%struct.rfcomm_dlc* %26)
  %28 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %28)
  %30 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  store %struct.rfcomm_dlc* %30, %struct.rfcomm_dlc** %2, align 8
  br label %31

31:                                               ; preds = %10, %9
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  ret %struct.rfcomm_dlc* %32
}

declare dso_local %struct.rfcomm_dlc* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rfcomm_dlc_clear_state(%struct.rfcomm_dlc*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
