; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_mfb_update_loops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_mfb_update_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_2__ = type { %struct.loop* }

@dom_computed = common dso_local global i64* null, align 8
@CDI_DOMINATORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mfb_update_loops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfb_update_loops(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loop*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.TYPE_2__* @single_succ(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.loop*, %struct.loop** %6, align 8
  store %struct.loop* %7, %struct.loop** %3, align 8
  %8 = load i64*, i64** @dom_computed, align 8
  %9 = load i64, i64* @CDI_DOMINATORS, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i64, i64* @CDI_DOMINATORS, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @single_pred(i32 %16)
  %18 = call i32 @set_immediate_dominator(i64 %14, i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.loop*, %struct.loop** %3, align 8
  %22 = call i32 @add_bb_to_loop(i32 %20, %struct.loop* %21)
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.loop*, %struct.loop** %3, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @single_succ(i32) #1

declare dso_local i32 @set_immediate_dominator(i64, i32, i32) #1

declare dso_local i32 @single_pred(i32) #1

declare dso_local i32 @add_bb_to_loop(i32, %struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
