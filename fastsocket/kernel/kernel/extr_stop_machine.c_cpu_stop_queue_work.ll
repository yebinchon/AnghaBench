; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_stop_machine.c_cpu_stop_queue_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_stop_machine.c_cpu_stop_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stopper = type { i32, i32, i32, i64 }
%struct.cpu_stop_work = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_stopper*, %struct.cpu_stop_work*)* @cpu_stop_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_stop_queue_work(%struct.cpu_stopper* %0, %struct.cpu_stop_work* %1) #0 {
  %3 = alloca %struct.cpu_stopper*, align 8
  %4 = alloca %struct.cpu_stop_work*, align 8
  %5 = alloca i64, align 8
  store %struct.cpu_stopper* %0, %struct.cpu_stopper** %3, align 8
  store %struct.cpu_stop_work* %1, %struct.cpu_stop_work** %4, align 8
  %6 = load %struct.cpu_stopper*, %struct.cpu_stopper** %3, align 8
  %7 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.cpu_stopper*, %struct.cpu_stopper** %3, align 8
  %11 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.cpu_stop_work*, %struct.cpu_stop_work** %4, align 8
  %16 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %15, i32 0, i32 1
  %17 = load %struct.cpu_stopper*, %struct.cpu_stopper** %3, align 8
  %18 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %17, i32 0, i32 2
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load %struct.cpu_stopper*, %struct.cpu_stopper** %3, align 8
  %21 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wake_up_process(i32 %22)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.cpu_stop_work*, %struct.cpu_stop_work** %4, align 8
  %26 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpu_stop_signal_done(i32 %27, i32 0)
  br label %29

29:                                               ; preds = %24, %14
  %30 = load %struct.cpu_stopper*, %struct.cpu_stopper** %3, align 8
  %31 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @cpu_stop_signal_done(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
