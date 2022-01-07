; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_require_notification_of_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_require_notification_of_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@not_same_real_pid = common dso_local global i64 0, align 8
@TTEO_NONE = common dso_local global i32 0, align 4
@TTEO_PROC_INHERIT = common dso_local global i32 0, align 4
@TTEVT_DEFAULT = common dso_local global i32 0, align 4
@TTEVT_SIGNAL = common dso_local global i32 0, align 4
@TTEVT_EXEC = common dso_local global i32 0, align 4
@TTEVT_EXIT = common dso_local global i32 0, align 4
@TTEVT_FORK = common dso_local global i32 0, align 4
@TTEVT_VFORK = common dso_local global i32 0, align 4
@TTEVT_LWP_CREATE = common dso_local global i32 0, align 4
@TTEVT_LWP_EXIT = common dso_local global i32 0, align 4
@TTEVT_LWP_TERMINATE = common dso_local global i32 0, align 4
@TT_PROC_SET_EVENT_MASK = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i64 0, align 8
@debug_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @require_notification_of_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @require_notification_of_events(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @not_same_real_pid, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %8 = call i32 @sigemptyset(i32* %7)
  %9 = load i32, i32* @TTEO_NONE, align 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @TTEO_PROC_INHERIT, align 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @TTEVT_DEFAULT, align 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @TTEVT_SIGNAL, align 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @TTEVT_EXEC, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @TTEVT_EXIT, align 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @TTEVT_FORK, align 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @TTEVT_VFORK, align 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @TTEVT_LWP_CREATE, align 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @TTEVT_LWP_EXIT, align 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @TTEVT_LWP_TERMINATE, align 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @TT_PROC_SET_EVENT_MASK, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i64, i64* @TT_NIL, align 8
  %52 = trunc i64 %51 to i32
  %53 = ptrtoint %struct.TYPE_2__* %4 to i32
  %54 = load i64, i64* @TT_NIL, align 8
  %55 = call i32 @call_real_ttrace(i32 %49, i32 %50, i32 %52, i32 %53, i32 12, i64 %54)
  store i32 %55, i32* %3, align 4
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @call_real_ttrace(i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
