; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_stop_machine.c_cpu_stop_signal_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_stop_machine.c_cpu_stop_signal_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stop_done = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_stop_done*, i32)* @cpu_stop_signal_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_stop_signal_done(%struct.cpu_stop_done* %0, i32 %1) #0 {
  %3 = alloca %struct.cpu_stop_done*, align 8
  %4 = alloca i32, align 4
  store %struct.cpu_stop_done* %0, %struct.cpu_stop_done** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpu_stop_done*, %struct.cpu_stop_done** %3, align 8
  %6 = icmp ne %struct.cpu_stop_done* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load %struct.cpu_stop_done*, %struct.cpu_stop_done** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load %struct.cpu_stop_done*, %struct.cpu_stop_done** %3, align 8
  %15 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %14, i32 0, i32 2
  %16 = call i64 @atomic_dec_and_test(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.cpu_stop_done*, %struct.cpu_stop_done** %3, align 8
  %20 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %19, i32 0, i32 1
  %21 = call i32 @complete(i32* %20)
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
