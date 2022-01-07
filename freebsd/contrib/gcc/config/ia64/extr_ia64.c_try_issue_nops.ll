; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_try_issue_nops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_try_issue_nops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle_state = type { i32 }

@ia64_nop = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bundle_state*, i32)* @try_issue_nops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_issue_nops(%struct.bundle_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bundle_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bundle_state* %0, %struct.bundle_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.bundle_state*, %struct.bundle_state** %4, align 8
  %13 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ia64_nop, align 4
  %16 = call i64 @state_transition(i32 %14, i32 %15)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.bundle_state*, %struct.bundle_state** %4, align 8
  %20 = call i32 @free_bundle_state(%struct.bundle_state* %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @state_transition(i32, i32) #1

declare dso_local i32 @free_bundle_state(%struct.bundle_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
