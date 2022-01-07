; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_setup_deferrable_timer_on_stack_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_setup_deferrable_timer_on_stack_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { void (i64)*, i64 }
%struct.lock_class_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_deferrable_timer_on_stack_key(%struct.timer_list* %0, i8* %1, %struct.lock_class_key* %2, void (i64)* %3, i64 %4) #0 {
  %6 = alloca %struct.timer_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lock_class_key*, align 8
  %9 = alloca void (i64)*, align 8
  %10 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %8, align 8
  store void (i64)* %3, void (i64)** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load void (i64)*, void (i64)** %9, align 8
  %12 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %13 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %12, i32 0, i32 0
  store void (i64)* %11, void (i64)** %13, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %16 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.lock_class_key*, %struct.lock_class_key** %8, align 8
  %20 = call i32 @init_timer_on_stack_key(%struct.timer_list* %17, i8* %18, %struct.lock_class_key* %19)
  %21 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %22 = call i32 @timer_set_deferrable(%struct.timer_list* %21)
  ret void
}

declare dso_local i32 @init_timer_on_stack_key(%struct.timer_list*, i8*, %struct.lock_class_key*) #1

declare dso_local i32 @timer_set_deferrable(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
