; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_get_iter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_get_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_iter = type { i32, i32 }

@__start___tracepoints = common dso_local global i32 0, align 4
@__stop___tracepoints = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracepoint_iter*)* @tracepoint_get_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracepoint_get_iter(%struct.tracepoint_iter* %0) #0 {
  %2 = alloca %struct.tracepoint_iter*, align 8
  %3 = alloca i32, align 4
  store %struct.tracepoint_iter* %0, %struct.tracepoint_iter** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tracepoint_iter*, %struct.tracepoint_iter** %2, align 8
  %5 = getelementptr inbounds %struct.tracepoint_iter, %struct.tracepoint_iter* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.tracepoint_iter*, %struct.tracepoint_iter** %2, align 8
  %10 = getelementptr inbounds %struct.tracepoint_iter, %struct.tracepoint_iter* %9, i32 0, i32 0
  %11 = load i32, i32* @__start___tracepoints, align 4
  %12 = load i32, i32* @__stop___tracepoints, align 4
  %13 = call i32 @tracepoint_get_iter_range(i32* %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %21

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.tracepoint_iter*, %struct.tracepoint_iter** %2, align 8
  %20 = call i32 @module_get_iter_tracepoints(%struct.tracepoint_iter* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.tracepoint_iter*, %struct.tracepoint_iter** %2, align 8
  %26 = call i32 @tracepoint_iter_reset(%struct.tracepoint_iter* %25)
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @tracepoint_get_iter_range(i32*, i32, i32) #1

declare dso_local i32 @module_get_iter_tracepoints(%struct.tracepoint_iter*) #1

declare dso_local i32 @tracepoint_iter_reset(%struct.tracepoint_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
