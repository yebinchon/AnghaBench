; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_slot_rotate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_slot_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_group = type { i32, i32, i32, i32 }

@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_group*, i32)* @qfq_slot_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_slot_rotate(%struct.qfq_group* %0, i32 %1) #0 {
  %3 = alloca %struct.qfq_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qfq_group* %0, %struct.qfq_group** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %7 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub i32 %8, %9
  %11 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %12 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = lshr i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %17 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %21 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %22, %23
  %25 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %26 = urem i32 %24, %25
  %27 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %28 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
