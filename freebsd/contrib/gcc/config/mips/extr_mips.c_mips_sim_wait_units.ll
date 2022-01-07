; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_sim_wait_units.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_sim_wait_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_sim = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_sim*, i32)* @mips_sim_wait_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_sim_wait_units(%struct.mips_sim* %0, i32 %1) #0 {
  %3 = alloca %struct.mips_sim*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mips_sim* %0, %struct.mips_sim** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @state_size()
  %7 = call i32 @alloca(i32 %6)
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %10 = getelementptr inbounds %struct.mips_sim, %struct.mips_sim* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %16 = getelementptr inbounds %struct.mips_sim, %struct.mips_sim* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (...) @state_size()
  %19 = call i32 @memcpy(i32 %14, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @state_transition(i32 %20, i32 %21)
  %23 = icmp sge i64 %22, 0
  br label %24

24:                                               ; preds = %13, %8
  %25 = phi i1 [ true, %8 ], [ %23, %13 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %28 = call i32 @mips_sim_next_cycle(%struct.mips_sim* %27)
  br label %8

29:                                               ; preds = %24
  ret void
}

declare dso_local i32 @alloca(i32) #1

declare dso_local i32 @state_size(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @state_transition(i32, i32) #1

declare dso_local i32 @mips_sim_next_cycle(%struct.mips_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
