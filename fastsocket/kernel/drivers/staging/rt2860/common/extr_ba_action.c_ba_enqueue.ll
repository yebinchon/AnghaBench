; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_ba_action.c_ba_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_ba_action.c_ba_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reordering_list = type { %struct.reordering_mpdu*, i32 }
%struct.reordering_mpdu = type { %struct.reordering_mpdu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reordering_list*, %struct.reordering_mpdu*)* @ba_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ba_enqueue(%struct.reordering_list* %0, %struct.reordering_mpdu* %1) #0 {
  %3 = alloca %struct.reordering_list*, align 8
  %4 = alloca %struct.reordering_mpdu*, align 8
  store %struct.reordering_list* %0, %struct.reordering_list** %3, align 8
  store %struct.reordering_mpdu* %1, %struct.reordering_mpdu** %4, align 8
  %5 = load %struct.reordering_list*, %struct.reordering_list** %3, align 8
  %6 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load %struct.reordering_list*, %struct.reordering_list** %3, align 8
  %10 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %9, i32 0, i32 0
  %11 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %10, align 8
  %12 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %4, align 8
  %13 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %12, i32 0, i32 0
  store %struct.reordering_mpdu* %11, %struct.reordering_mpdu** %13, align 8
  %14 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %4, align 8
  %15 = load %struct.reordering_list*, %struct.reordering_list** %3, align 8
  %16 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %15, i32 0, i32 0
  store %struct.reordering_mpdu* %14, %struct.reordering_mpdu** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
