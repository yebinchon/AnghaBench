; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c__proc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c__proc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i64, i64, i64, %struct.proc*, %struct.inf* }
%struct.inf = type { %struct.proc*, %struct.TYPE_2__, %struct.proc* }
%struct.TYPE_2__ = type { %struct.proc* }

@.str = private unnamed_addr constant [11 x i8] c"freeing...\00", align 1
@MACH_PORT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc* @_proc_free(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.inf*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = getelementptr inbounds %struct.proc, %struct.proc* %5, i32 0, i32 5
  %7 = load %struct.inf*, %struct.inf** %6, align 8
  store %struct.inf* %7, %struct.inf** %3, align 8
  %8 = load %struct.proc*, %struct.proc** %2, align 8
  %9 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 4
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %4, align 8
  %11 = load %struct.proc*, %struct.proc** %2, align 8
  %12 = call i32 @proc_debug(%struct.proc* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.proc*, %struct.proc** %2, align 8
  %14 = load %struct.inf*, %struct.inf** %3, align 8
  %15 = getelementptr inbounds %struct.inf, %struct.inf* %14, i32 0, i32 2
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  %17 = icmp eq %struct.proc* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.inf*, %struct.inf** %3, align 8
  %20 = call i32 @inf_set_step_thread(%struct.inf* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.proc*, %struct.proc** %2, align 8
  %23 = load %struct.inf*, %struct.inf** %3, align 8
  %24 = getelementptr inbounds %struct.inf, %struct.inf* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.proc*, %struct.proc** %25, align 8
  %27 = icmp eq %struct.proc* %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.inf*, %struct.inf** %3, align 8
  %30 = call i32 @inf_clear_wait(%struct.inf* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.proc*, %struct.proc** %2, align 8
  %33 = load %struct.inf*, %struct.inf** %3, align 8
  %34 = getelementptr inbounds %struct.inf, %struct.inf* %33, i32 0, i32 0
  %35 = load %struct.proc*, %struct.proc** %34, align 8
  %36 = icmp eq %struct.proc* %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.inf*, %struct.inf** %3, align 8
  %39 = getelementptr inbounds %struct.inf, %struct.inf* %38, i32 0, i32 0
  store %struct.proc* null, %struct.proc** %39, align 8
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.proc*, %struct.proc** %2, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MACH_PORT_NULL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load %struct.proc*, %struct.proc** %2, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MACH_PORT_NULL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.proc*, %struct.proc** %2, align 8
  %54 = call i32 @proc_restore_exc_port(%struct.proc* %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.proc*, %struct.proc** %2, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.proc*, %struct.proc** %2, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.proc*, %struct.proc** %2, align 8
  %64 = call i32 @proc_update_sc(%struct.proc* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = call i32 (...) @mach_task_self()
  %67 = load %struct.proc*, %struct.proc** %2, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @mach_port_deallocate(i32 %66, i64 %69)
  br label %71

71:                                               ; preds = %65, %40
  %72 = load %struct.proc*, %struct.proc** %2, align 8
  %73 = call i32 @xfree(%struct.proc* %72)
  %74 = load %struct.proc*, %struct.proc** %4, align 8
  ret %struct.proc* %74
}

declare dso_local i32 @proc_debug(%struct.proc*, i8*) #1

declare dso_local i32 @inf_set_step_thread(%struct.inf*, i32) #1

declare dso_local i32 @inf_clear_wait(%struct.inf*) #1

declare dso_local i32 @proc_restore_exc_port(%struct.proc*) #1

declare dso_local i32 @proc_update_sc(%struct.proc*) #1

declare dso_local i32 @mach_port_deallocate(i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @xfree(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
