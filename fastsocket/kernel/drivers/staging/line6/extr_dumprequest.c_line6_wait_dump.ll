; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_dumprequest.c_line6_wait_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_dumprequest.c_line6_wait_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.line6_dump_request = type { i32, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_wait_dump(%struct.line6_dump_request* %0, i32 %1) #0 {
  %3 = alloca %struct.line6_dump_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.line6_dump_request* %0, %struct.line6_dump_request** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @wait, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = call i32 @DECLARE_WAITQUEUE(i32 %6, %struct.TYPE_4__* %7)
  %9 = load %struct.line6_dump_request*, %struct.line6_dump_request** %3, align 8
  %10 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %9, i32 0, i32 0
  %11 = call i32 @add_wait_queue(i32* %10, i32* @wait)
  %12 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load %struct.line6_dump_request*, %struct.line6_dump_request** %3, align 8
  %17 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %28 = call i64 @signal_pending(%struct.TYPE_4__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ERESTARTSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %26
  %34 = call i32 (...) @schedule()
  br label %35

35:                                               ; preds = %33
  br label %15

36:                                               ; preds = %30, %23, %15
  %37 = load i32, i32* @TASK_RUNNING, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.line6_dump_request*, %struct.line6_dump_request** %3, align 8
  %41 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %40, i32 0, i32 0
  %42 = call i32 @remove_wait_queue(i32* %41, i32* @wait)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
