; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_profile.c_profile_tick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_profile.c_profile_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@CPU_PROFILING = common dso_local global i32 0, align 4
@prof_cpu_mask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @profile_tick(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %4, %struct.pt_regs** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @CPU_PROFILING, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  br i1 true, label %9, label %12

9:                                                ; preds = %8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %11 = call i32 @timer_hook(%struct.pt_regs* %10)
  br label %12

12:                                               ; preds = %9, %8, %1
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = call i32 @user_mode(%struct.pt_regs* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load i32*, i32** @prof_cpu_mask, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = call i32 (...) @smp_processor_id()
  %21 = load i32*, i32** @prof_cpu_mask, align 8
  %22 = call i64 @cpumask_test_cpu(i32 %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %27 = call i64 @profile_pc(%struct.pt_regs* %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @profile_hit(i32 %25, i8* %28)
  br label %30

30:                                               ; preds = %24, %19, %16, %12
  ret void
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @timer_hook(%struct.pt_regs*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @profile_hit(i32, i8*) #1

declare dso_local i64 @profile_pc(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
