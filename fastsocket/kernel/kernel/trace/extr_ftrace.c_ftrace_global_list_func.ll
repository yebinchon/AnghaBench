; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ftrace.c_ftrace_global_list_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ftrace.c_ftrace_global_list_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { %struct.ftrace_ops*, i32 (i64, i64)* }

@ftrace_global_list = common dso_local global %struct.ftrace_ops* null, align 8
@ftrace_list_end = common dso_local global %struct.ftrace_ops zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @ftrace_global_list_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftrace_global_list_func(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ftrace_ops*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ftrace_ops*, %struct.ftrace_ops** @ftrace_global_list, align 8
  store %struct.ftrace_ops* %6, %struct.ftrace_ops** %5, align 8
  %7 = call i32 (...) @read_barrier_depends()
  br label %8

8:                                                ; preds = %11, %2
  %9 = load %struct.ftrace_ops*, %struct.ftrace_ops** %5, align 8
  %10 = icmp ne %struct.ftrace_ops* %9, @ftrace_list_end
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = call i32 (...) @read_barrier_depends()
  %13 = load %struct.ftrace_ops*, %struct.ftrace_ops** %5, align 8
  %14 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %13, i32 0, i32 1
  %15 = load i32 (i64, i64)*, i32 (i64, i64)** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 %15(i64 %16, i64 %17)
  %19 = load %struct.ftrace_ops*, %struct.ftrace_ops** %5, align 8
  %20 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %19, i32 0, i32 0
  %21 = load %struct.ftrace_ops*, %struct.ftrace_ops** %20, align 8
  store %struct.ftrace_ops* %21, %struct.ftrace_ops** %5, align 8
  br label %8

22:                                               ; preds = %8
  ret void
}

declare dso_local i32 @read_barrier_depends(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
