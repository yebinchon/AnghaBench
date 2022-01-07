; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_add_reserve_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_add_reserve_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reserve_info = type { %struct.reserve_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reserve_info* @add_reserve_entry(%struct.reserve_info* %0, %struct.reserve_info* %1) #0 {
  %3 = alloca %struct.reserve_info*, align 8
  %4 = alloca %struct.reserve_info*, align 8
  %5 = alloca %struct.reserve_info*, align 8
  %6 = alloca %struct.reserve_info*, align 8
  store %struct.reserve_info* %0, %struct.reserve_info** %4, align 8
  store %struct.reserve_info* %1, %struct.reserve_info** %5, align 8
  %7 = load %struct.reserve_info*, %struct.reserve_info** %5, align 8
  %8 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %7, i32 0, i32 0
  store %struct.reserve_info* null, %struct.reserve_info** %8, align 8
  %9 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  %10 = icmp ne %struct.reserve_info* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.reserve_info*, %struct.reserve_info** %5, align 8
  store %struct.reserve_info* %12, %struct.reserve_info** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  store %struct.reserve_info* %14, %struct.reserve_info** %6, align 8
  br label %15

15:                                               ; preds = %21, %13
  %16 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %17 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %16, i32 0, i32 0
  %18 = load %struct.reserve_info*, %struct.reserve_info** %17, align 8
  %19 = icmp ne %struct.reserve_info* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %23 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %22, i32 0, i32 0
  %24 = load %struct.reserve_info*, %struct.reserve_info** %23, align 8
  store %struct.reserve_info* %24, %struct.reserve_info** %6, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.reserve_info*, %struct.reserve_info** %5, align 8
  %27 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %28 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %27, i32 0, i32 0
  store %struct.reserve_info* %26, %struct.reserve_info** %28, align 8
  %29 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  store %struct.reserve_info* %29, %struct.reserve_info** %3, align 8
  br label %30

30:                                               ; preds = %25, %11
  %31 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  ret %struct.reserve_info* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
