; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_dup_state_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_dup_state_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_reg_state = type { %struct.unw_reg_state* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unw_reg_state* (%struct.unw_reg_state*)* @dup_state_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unw_reg_state* @dup_state_stack(%struct.unw_reg_state* %0) #0 {
  %2 = alloca %struct.unw_reg_state*, align 8
  %3 = alloca %struct.unw_reg_state*, align 8
  %4 = alloca %struct.unw_reg_state*, align 8
  %5 = alloca %struct.unw_reg_state*, align 8
  store %struct.unw_reg_state* %0, %struct.unw_reg_state** %2, align 8
  store %struct.unw_reg_state* null, %struct.unw_reg_state** %4, align 8
  store %struct.unw_reg_state* null, %struct.unw_reg_state** %5, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.unw_reg_state*, %struct.unw_reg_state** %2, align 8
  %8 = icmp ne %struct.unw_reg_state* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = call %struct.unw_reg_state* (...) @alloc_reg_state()
  store %struct.unw_reg_state* %10, %struct.unw_reg_state** %3, align 8
  %11 = load %struct.unw_reg_state*, %struct.unw_reg_state** %3, align 8
  %12 = load %struct.unw_reg_state*, %struct.unw_reg_state** %2, align 8
  %13 = call i32 @memcpy(%struct.unw_reg_state* %11, %struct.unw_reg_state* %12, i32 8)
  %14 = load %struct.unw_reg_state*, %struct.unw_reg_state** %5, align 8
  %15 = icmp ne %struct.unw_reg_state* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.unw_reg_state*, %struct.unw_reg_state** %3, align 8
  %18 = load %struct.unw_reg_state*, %struct.unw_reg_state** %4, align 8
  %19 = getelementptr inbounds %struct.unw_reg_state, %struct.unw_reg_state* %18, i32 0, i32 0
  store %struct.unw_reg_state* %17, %struct.unw_reg_state** %19, align 8
  br label %22

20:                                               ; preds = %9
  %21 = load %struct.unw_reg_state*, %struct.unw_reg_state** %3, align 8
  store %struct.unw_reg_state* %21, %struct.unw_reg_state** %5, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.unw_reg_state*, %struct.unw_reg_state** %2, align 8
  %24 = getelementptr inbounds %struct.unw_reg_state, %struct.unw_reg_state* %23, i32 0, i32 0
  %25 = load %struct.unw_reg_state*, %struct.unw_reg_state** %24, align 8
  store %struct.unw_reg_state* %25, %struct.unw_reg_state** %2, align 8
  %26 = load %struct.unw_reg_state*, %struct.unw_reg_state** %3, align 8
  store %struct.unw_reg_state* %26, %struct.unw_reg_state** %4, align 8
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.unw_reg_state*, %struct.unw_reg_state** %5, align 8
  ret %struct.unw_reg_state* %28
}

declare dso_local %struct.unw_reg_state* @alloc_reg_state(...) #1

declare dso_local i32 @memcpy(%struct.unw_reg_state*, %struct.unw_reg_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
