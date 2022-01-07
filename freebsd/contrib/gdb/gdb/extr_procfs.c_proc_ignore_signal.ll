; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_ignore_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_ignore_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_ignore_signal(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_6__* @find_procinfo_or_die(i32 %14, i32 0)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = call i64 @proc_get_traced_signals(%struct.TYPE_6__* %20, i32* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @prdelset(i32* %6, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = call i32 @proc_set_traced_signals(%struct.TYPE_6__* %26, i32* %6)
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %16
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_6__* @find_procinfo_or_die(i32, i32) #1

declare dso_local i64 @proc_get_traced_signals(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @prdelset(i32*, i32) #1

declare dso_local i32 @proc_set_traced_signals(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
