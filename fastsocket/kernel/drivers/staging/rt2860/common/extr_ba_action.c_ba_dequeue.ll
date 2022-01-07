; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_ba_action.c_ba_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_ba_action.c_ba_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reordering_mpdu = type { %struct.reordering_mpdu* }
%struct.reordering_list = type { %struct.reordering_mpdu*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reordering_mpdu* (%struct.reordering_list*)* @ba_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reordering_mpdu* @ba_dequeue(%struct.reordering_list* %0) #0 {
  %2 = alloca %struct.reordering_list*, align 8
  %3 = alloca %struct.reordering_mpdu*, align 8
  store %struct.reordering_list* %0, %struct.reordering_list** %2, align 8
  store %struct.reordering_mpdu* null, %struct.reordering_mpdu** %3, align 8
  %4 = load %struct.reordering_list*, %struct.reordering_list** %2, align 8
  %5 = call i32 @ASSERT(%struct.reordering_list* %4)
  %6 = load %struct.reordering_list*, %struct.reordering_list** %2, align 8
  %7 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.reordering_list*, %struct.reordering_list** %2, align 8
  %12 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.reordering_list*, %struct.reordering_list** %2, align 8
  %16 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %15, i32 0, i32 0
  %17 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %16, align 8
  store %struct.reordering_mpdu* %17, %struct.reordering_mpdu** %3, align 8
  %18 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %3, align 8
  %19 = icmp ne %struct.reordering_mpdu* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %3, align 8
  %22 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %21, i32 0, i32 0
  %23 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %22, align 8
  %24 = load %struct.reordering_list*, %struct.reordering_list** %2, align 8
  %25 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %24, i32 0, i32 0
  store %struct.reordering_mpdu* %23, %struct.reordering_mpdu** %25, align 8
  %26 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %3, align 8
  %27 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %26, i32 0, i32 0
  store %struct.reordering_mpdu* null, %struct.reordering_mpdu** %27, align 8
  br label %28

28:                                               ; preds = %20, %10
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %3, align 8
  ret %struct.reordering_mpdu* %30
}

declare dso_local i32 @ASSERT(%struct.reordering_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
