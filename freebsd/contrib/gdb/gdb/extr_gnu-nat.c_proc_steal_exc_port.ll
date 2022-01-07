; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_steal_exc_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_steal_exc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"inserting exception port: %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"saved exception port: %d\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Error setting exception port for %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_steal_exc_port(%struct.proc* %0, i64 %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = call i64 @_proc_get_exc_port(%struct.proc* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %12 = load %struct.proc*, %struct.proc** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @proc_debug(%struct.proc* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.proc*, %struct.proc** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @proc_set_exception_port(%struct.proc* %19, i64 %20)
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.proc*, %struct.proc** %3, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25, %22
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 (...) @mach_task_self()
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @mach_port_deallocate(i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %31
  br label %54

39:                                               ; preds = %25
  %40 = load %struct.proc*, %struct.proc** %3, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = call i32 (...) @mach_task_self()
  %46 = load %struct.proc*, %struct.proc** %3, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mach_port_deallocate(i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.proc*, %struct.proc** %3, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %38
  %55 = load %struct.proc*, %struct.proc** %3, align 8
  %56 = load %struct.proc*, %struct.proc** %3, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @proc_debug(%struct.proc* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.proc*, %struct.proc** %3, align 8
  %65 = getelementptr inbounds %struct.proc, %struct.proc* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %72

66:                                               ; preds = %54
  %67 = load %struct.proc*, %struct.proc** %3, align 8
  %68 = call i32 @proc_string(%struct.proc* %67)
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @safe_strerror(i64 %69)
  %71 = call i32 @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %62
  br label %73

73:                                               ; preds = %72, %2
  ret void
}

declare dso_local i64 @_proc_get_exc_port(%struct.proc*) #1

declare dso_local i32 @proc_debug(%struct.proc*, i8*, i64) #1

declare dso_local i64 @proc_set_exception_port(%struct.proc*, i64) #1

declare dso_local i32 @mach_port_deallocate(i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

declare dso_local i32 @proc_string(%struct.proc*) #1

declare dso_local i32 @safe_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
