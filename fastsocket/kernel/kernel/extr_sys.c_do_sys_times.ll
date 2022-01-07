; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_do_sys_times.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_do_sys_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tms = type { i8*, i8*, i8*, i8* }

@current = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_sys_times(%struct.tms* %0) #0 {
  %2 = alloca %struct.tms*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tms* %0, %struct.tms** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %13 = call i32 @thread_group_times(%struct.TYPE_7__* %12, i32* %3, i32* %4)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i8* @cputime_to_clock_t(i32 %29)
  %31 = load %struct.tms*, %struct.tms** %2, align 8
  %32 = getelementptr inbounds %struct.tms, %struct.tms* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @cputime_to_clock_t(i32 %33)
  %35 = load %struct.tms*, %struct.tms** %2, align 8
  %36 = getelementptr inbounds %struct.tms, %struct.tms* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @cputime_to_clock_t(i32 %37)
  %39 = load %struct.tms*, %struct.tms** %2, align 8
  %40 = getelementptr inbounds %struct.tms, %struct.tms* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i8* @cputime_to_clock_t(i32 %41)
  %43 = load %struct.tms*, %struct.tms** %2, align 8
  %44 = getelementptr inbounds %struct.tms, %struct.tms* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @thread_group_times(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @cputime_to_clock_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
