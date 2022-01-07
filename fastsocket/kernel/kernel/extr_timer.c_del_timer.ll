; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_del_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_del_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i64, i32 }
%struct.tvec_base = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tvec_base*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = call i32 @timer_stats_timer_clear_start_info(%struct.timer_list* %6)
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = call i64 @timer_pending(%struct.timer_list* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %13 = call %struct.tvec_base* @lock_timer_base(%struct.timer_list* %12, i64* %4)
  store %struct.tvec_base* %13, %struct.tvec_base** %3, align 8
  %14 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %15 = call i64 @timer_pending(%struct.timer_list* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %19 = call i32 @detach_timer(%struct.timer_list* %18, i32 1)
  %20 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %21 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %24 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %29 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @tbase_get_deferrable(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %35 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %38 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %27, %17
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %11
  %41 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %42 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %41, i32 0, i32 2
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %1
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @timer_stats_timer_clear_start_info(%struct.timer_list*) #1

declare dso_local i64 @timer_pending(%struct.timer_list*) #1

declare dso_local %struct.tvec_base* @lock_timer_base(%struct.timer_list*, i64*) #1

declare dso_local i32 @detach_timer(%struct.timer_list*, i32) #1

declare dso_local i32 @tbase_get_deferrable(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
