; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_do_mach_notify_dead_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_do_mach_notify_dead_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i64, i64, %struct.TYPE_2__, %struct.proc* }
%struct.TYPE_2__ = type { i32 }
%struct.proc = type { i64, i64 }

@waiting_inf = common dso_local global %struct.inf* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"port = %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"is dead\00", align 1
@MACH_PORT_NULL = common dso_local global i8* null, align 8
@proc_wait_pid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_mach_notify_dead_name(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inf*, align 8
  %6 = alloca %struct.proc*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.inf*, %struct.inf** @waiting_inf, align 8
  store %struct.inf* %7, %struct.inf** %5, align 8
  %8 = load %struct.inf*, %struct.inf** @waiting_inf, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @inf_debug(%struct.inf* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.inf*, %struct.inf** %5, align 8
  %12 = getelementptr inbounds %struct.inf, %struct.inf* %11, i32 0, i32 3
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  %14 = icmp ne %struct.proc* %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %2
  %16 = load %struct.inf*, %struct.inf** %5, align 8
  %17 = getelementptr inbounds %struct.inf, %struct.inf* %16, i32 0, i32 3
  %18 = load %struct.proc*, %struct.proc** %17, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %15
  %24 = load %struct.inf*, %struct.inf** %5, align 8
  %25 = getelementptr inbounds %struct.inf, %struct.inf* %24, i32 0, i32 3
  %26 = load %struct.proc*, %struct.proc** %25, align 8
  %27 = call i32 @proc_debug(%struct.proc* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** @MACH_PORT_NULL, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.inf*, %struct.inf** %5, align 8
  %31 = getelementptr inbounds %struct.inf, %struct.inf* %30, i32 0, i32 3
  %32 = load %struct.proc*, %struct.proc** %31, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 0
  store i64 %29, i64* %33, align 8
  %34 = load i64, i64* @proc_wait_pid, align 8
  %35 = load %struct.inf*, %struct.inf** %5, align 8
  %36 = getelementptr inbounds %struct.inf, %struct.inf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.inf*, %struct.inf** %5, align 8
  %41 = getelementptr inbounds %struct.inf, %struct.inf* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %46

43:                                               ; preds = %23
  %44 = load %struct.inf*, %struct.inf** %5, align 8
  %45 = call i32 @inf_task_died_status(%struct.inf* %44)
  br label %46

46:                                               ; preds = %43, %39
  br label %72

47:                                               ; preds = %15, %2
  %48 = load %struct.inf*, %struct.inf** %5, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call %struct.proc* @inf_port_to_thread(%struct.inf* %48, i64 %49)
  store %struct.proc* %50, %struct.proc** %6, align 8
  %51 = load %struct.proc*, %struct.proc** %6, align 8
  %52 = icmp ne %struct.proc* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.proc*, %struct.proc** %6, align 8
  %55 = call i32 @proc_debug(%struct.proc* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** @MACH_PORT_NULL, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.inf*, %struct.inf** %5, align 8
  %62 = getelementptr inbounds %struct.inf, %struct.inf* %61, i32 0, i32 3
  %63 = load %struct.proc*, %struct.proc** %62, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.inf*, %struct.inf** %5, align 8
  %69 = getelementptr inbounds %struct.inf, %struct.inf* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %46
  %73 = call i32 (...) @mach_task_self()
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @mach_port_deallocate(i32 %73, i64 %74)
  %76 = load %struct.inf*, %struct.inf** %5, align 8
  %77 = getelementptr inbounds %struct.inf, %struct.inf* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  ret i32 0
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*, i64) #1

declare dso_local i32 @proc_debug(%struct.proc*, i8*) #1

declare dso_local i32 @inf_task_died_status(%struct.inf*) #1

declare dso_local %struct.proc* @inf_port_to_thread(%struct.inf*, i64) #1

declare dso_local i32 @mach_port_deallocate(i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
