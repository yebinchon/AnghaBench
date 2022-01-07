; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c___init_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c___init_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.lock_class_key = type { i32 }

@tvec_bases = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*, i8*, %struct.lock_class_key*)* @__init_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__init_timer(%struct.timer_list* %0, i8* %1, %struct.lock_class_key* %2) #0 {
  %4 = alloca %struct.timer_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lock_class_key*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %6, align 8
  %7 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %8 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @tvec_bases, align 4
  %11 = call i32 @__raw_get_cpu_var(i32 %10)
  %12 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %13 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %15 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %14, i32 0, i32 1
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.lock_class_key*, %struct.lock_class_key** %6, align 8
  %18 = call i32 @lockdep_init_map(i32* %15, i8* %16, %struct.lock_class_key* %17, i32 0)
  ret void
}

declare dso_local i32 @__raw_get_cpu_var(i32) #1

declare dso_local i32 @lockdep_init_map(i32*, i8*, %struct.lock_class_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
