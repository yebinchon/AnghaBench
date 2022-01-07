; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_clear_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_clear_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"clearing wait\00", align 1
@TARGET_WAITKIND_SPURIOUS = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_clear_wait(%struct.inf* %0) #0 {
  %2 = alloca %struct.inf*, align 8
  store %struct.inf* %0, %struct.inf** %2, align 8
  %3 = load %struct.inf*, %struct.inf** %2, align 8
  %4 = call i32 @inf_debug(%struct.inf* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @TARGET_WAITKIND_SPURIOUS, align 4
  %6 = load %struct.inf*, %struct.inf** %2, align 8
  %7 = getelementptr inbounds %struct.inf, %struct.inf* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %5, i32* %9, align 8
  %10 = load %struct.inf*, %struct.inf** %2, align 8
  %11 = getelementptr inbounds %struct.inf, %struct.inf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.inf*, %struct.inf** %2, align 8
  %14 = getelementptr inbounds %struct.inf, %struct.inf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.inf*, %struct.inf** %2, align 8
  %17 = getelementptr inbounds %struct.inf, %struct.inf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MACH_PORT_NULL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = call i32 (...) @mach_task_self()
  %25 = load %struct.inf*, %struct.inf** %2, align 8
  %26 = getelementptr inbounds %struct.inf, %struct.inf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @mach_port_deallocate(i32 %24, i64 %29)
  %31 = load i64, i64* @MACH_PORT_NULL, align 8
  %32 = load %struct.inf*, %struct.inf** %2, align 8
  %33 = getelementptr inbounds %struct.inf, %struct.inf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  br label %36

36:                                               ; preds = %23, %1
  %37 = load %struct.inf*, %struct.inf** %2, align 8
  %38 = getelementptr inbounds %struct.inf, %struct.inf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MACH_PORT_NULL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = call i32 (...) @mach_task_self()
  %46 = load %struct.inf*, %struct.inf** %2, align 8
  %47 = getelementptr inbounds %struct.inf, %struct.inf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mach_port_deallocate(i32 %45, i64 %50)
  %52 = load i64, i64* @MACH_PORT_NULL, align 8
  %53 = load %struct.inf*, %struct.inf** %2, align 8
  %54 = getelementptr inbounds %struct.inf, %struct.inf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*) #1

declare dso_local i32 @mach_port_deallocate(i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
