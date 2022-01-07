; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_restore_exc_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_restore_exc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i8* }

@.str = private unnamed_addr constant [30 x i8] c"restoring real exception port\00", align 1
@MACH_PORT_NULL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Error setting exception port for %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_restore_exc_port(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = call i64 @_proc_get_exc_port(%struct.proc* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %1
  store i64 0, i64* %4, align 8
  %10 = load %struct.proc*, %struct.proc** %2, align 8
  %11 = call i32 @proc_debug(%struct.proc* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.proc*, %struct.proc** %2, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load %struct.proc*, %struct.proc** %2, align 8
  %19 = load %struct.proc*, %struct.proc** %2, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @proc_set_exception_port(%struct.proc* %18, i8* %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %17, %9
  %24 = load %struct.proc*, %struct.proc** %2, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = call i32 (...) @mach_task_self()
  %30 = load %struct.proc*, %struct.proc** %2, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @mach_port_deallocate(i32 %29, i8* %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i8*, i8** @MACH_PORT_NULL, align 8
  %36 = load %struct.proc*, %struct.proc** %2, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** @MACH_PORT_NULL, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.proc*, %struct.proc** %2, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.proc*, %struct.proc** %2, align 8
  %47 = call i32 @proc_string(%struct.proc* %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @safe_strerror(i64 %48)
  %50 = call i32 @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i64 @_proc_get_exc_port(%struct.proc*) #1

declare dso_local i32 @proc_debug(%struct.proc*, i8*) #1

declare dso_local i64 @proc_set_exception_port(%struct.proc*, i8*) #1

declare dso_local i32 @mach_port_deallocate(i32, i8*) #1

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
