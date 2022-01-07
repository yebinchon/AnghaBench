; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_alloc_label_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_alloc_label_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_labeled_state = type { i32 }

@emergency_labeled_state_free = common dso_local global i32 0, align 4
@emergency_labeled_state = common dso_local global %struct.unw_labeled_state* null, align 8
@labeled_state_alloced = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unw_labeled_state* ()* @alloc_label_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unw_labeled_state* @alloc_label_state() #0 {
  %1 = alloca %struct.unw_labeled_state*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.unw_labeled_state* @malloc(i32 4)
  store %struct.unw_labeled_state* %3, %struct.unw_labeled_state** %1, align 8
  %4 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %1, align 8
  %5 = icmp ne %struct.unw_labeled_state* %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = call i32 @atomic_alloc(i32* @emergency_labeled_state_free)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** @emergency_labeled_state, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %11, i64 %13
  store %struct.unw_labeled_state* %14, %struct.unw_labeled_state** %1, align 8
  br label %15

15:                                               ; preds = %10, %6
  br label %16

16:                                               ; preds = %15, %0
  %17 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %1, align 8
  ret %struct.unw_labeled_state* %17
}

declare dso_local %struct.unw_labeled_state* @malloc(i32) #1

declare dso_local i32 @atomic_alloc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
