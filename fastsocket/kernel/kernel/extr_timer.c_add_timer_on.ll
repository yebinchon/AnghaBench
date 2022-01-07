; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_add_timer_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_add_timer_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32, i32, i32 }
%struct.tvec_base = type { i32, i32 }

@tvec_bases = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_timer_on(%struct.timer_list* %0, i32 %1) #0 {
  %3 = alloca %struct.timer_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tvec_base*, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @tvec_bases, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.tvec_base* @per_cpu(i32 %7, i32 %8)
  store %struct.tvec_base* %9, %struct.tvec_base** %5, align 8
  %10 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %11 = call i32 @timer_stats_timer_set_start_info(%struct.timer_list* %10)
  %12 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %13 = call i64 @timer_pending(%struct.timer_list* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %17 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.tvec_base*, %struct.tvec_base** %5, align 8
  %26 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %30 = load %struct.tvec_base*, %struct.tvec_base** %5, align 8
  %31 = call i32 @timer_set_base(%struct.timer_list* %29, %struct.tvec_base* %30)
  %32 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %33 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %34 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @debug_activate(%struct.timer_list* %32, i32 %35)
  %37 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %38 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tvec_base*, %struct.tvec_base** %5, align 8
  %41 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @time_before(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %21
  %46 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %47 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @tbase_get_deferrable(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %53 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tvec_base*, %struct.tvec_base** %5, align 8
  %56 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %45, %21
  %58 = load %struct.tvec_base*, %struct.tvec_base** %5, align 8
  %59 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %60 = call i32 @internal_add_timer(%struct.tvec_base* %58, %struct.timer_list* %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wake_up_idle_cpu(i32 %61)
  %63 = load %struct.tvec_base*, %struct.tvec_base** %5, align 8
  %64 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %63, i32 0, i32 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  ret void
}

declare dso_local %struct.tvec_base* @per_cpu(i32, i32) #1

declare dso_local i32 @timer_stats_timer_set_start_info(%struct.timer_list*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timer_set_base(%struct.timer_list*, %struct.tvec_base*) #1

declare dso_local i32 @debug_activate(%struct.timer_list*, i32) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @tbase_get_deferrable(i32) #1

declare dso_local i32 @internal_add_timer(%struct.tvec_base*, %struct.timer_list*) #1

declare dso_local i32 @wake_up_idle_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
