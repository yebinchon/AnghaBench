; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_show_perf_probe_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_show_perf_probe_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_perf_probe_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @setup_pager()
  %5 = call i32 @open_kprobe_events(i32 0)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %31

10:                                               ; preds = %0
  %11 = call i32 (...) @init_vmlinux()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %1, align 4
  br label %31

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @__show_perf_probe_events(i32 %17, i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @close(i32 %19)
  %21 = call i32 @open_uprobe_events(i32 0)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @__show_perf_probe_events(i32 %25, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @close(i32 %27)
  br label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %14, %8
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @open_kprobe_events(i32) #1

declare dso_local i32 @init_vmlinux(...) #1

declare dso_local i32 @__show_perf_probe_events(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open_uprobe_events(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
