; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_make_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_make_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.inf*, i64 }
%struct.inf = type { i64, i64, i32, i32, i32 }

@MACH_PORT_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"is new\00", align 1
@MACH_NOTIFY_DEAD_NAME = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_MAKE_SEND_ONCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Couldn't request notification for port %d: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"notifications to: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc* @make_proc(%struct.inf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.inf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.proc*, align 8
  store %struct.inf* %0, %struct.inf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @MACH_PORT_NULL, align 8
  store i64 %10, i64* %8, align 8
  %11 = call %struct.proc* @xmalloc(i32 112)
  store %struct.proc* %11, %struct.proc** %9, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.proc*, %struct.proc** %9, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 15
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.proc*, %struct.proc** %9, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.inf*, %struct.inf** %4, align 8
  %19 = load %struct.proc*, %struct.proc** %9, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 14
  store %struct.inf* %18, %struct.inf** %20, align 8
  %21 = load %struct.proc*, %struct.proc** %9, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 13
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @MACH_PORT_NULL, align 8
  %24 = load %struct.proc*, %struct.proc** %9, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 12
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* @MACH_PORT_NULL, align 8
  %27 = load %struct.proc*, %struct.proc** %9, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 11
  store i64 %26, i64* %28, align 8
  %29 = load %struct.proc*, %struct.proc** %9, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.proc*, %struct.proc** %9, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.inf*, %struct.inf** %4, align 8
  %34 = getelementptr inbounds %struct.inf, %struct.inf* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.proc*, %struct.proc** %9, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inf*, %struct.inf** %4, align 8
  %39 = getelementptr inbounds %struct.inf, %struct.inf* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.proc*, %struct.proc** %9, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.inf*, %struct.inf** %4, align 8
  %44 = getelementptr inbounds %struct.inf, %struct.inf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.proc*, %struct.proc** %9, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.proc*, %struct.proc** %9, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.proc*, %struct.proc** %9, align 8
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.proc*, %struct.proc** %9, align 8
  %54 = getelementptr inbounds %struct.proc, %struct.proc* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.proc*, %struct.proc** %9, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.proc*, %struct.proc** %9, align 8
  %58 = getelementptr inbounds %struct.proc, %struct.proc* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.proc*, %struct.proc** %9, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.proc*, %struct.proc** %9, align 8
  %62 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 (...) @mach_task_self()
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* @MACH_NOTIFY_DEAD_NAME, align 4
  %66 = load %struct.inf*, %struct.inf** %4, align 8
  %67 = getelementptr inbounds %struct.inf, %struct.inf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND_ONCE, align 4
  %70 = call i64 @mach_port_request_notification(i32 %63, i64 %64, i32 %65, i32 1, i64 %68, i32 %69, i64* %8)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %3
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @safe_strerror(i64 %75)
  %77 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %74, i32 %76)
  br label %92

78:                                               ; preds = %3
  %79 = load %struct.proc*, %struct.proc** %9, align 8
  %80 = load %struct.inf*, %struct.inf** %4, align 8
  %81 = getelementptr inbounds %struct.inf, %struct.inf* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @MACH_PORT_NULL, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = call i32 (...) @mach_task_self()
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @mach_port_deallocate(i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %78
  br label %92

92:                                               ; preds = %91, %73
  %93 = load %struct.inf*, %struct.inf** %4, align 8
  %94 = getelementptr inbounds %struct.inf, %struct.inf* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct.proc*, %struct.proc** %9, align 8
  %99 = call i64 @proc_is_task(%struct.proc* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.proc*, %struct.proc** %9, align 8
  %103 = load %struct.inf*, %struct.inf** %4, align 8
  %104 = getelementptr inbounds %struct.inf, %struct.inf* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @proc_steal_exc_port(%struct.proc* %102, i64 %105)
  br label %111

107:                                              ; preds = %97
  %108 = load %struct.proc*, %struct.proc** %9, align 8
  %109 = load i64, i64* @MACH_PORT_NULL, align 8
  %110 = call i32 @proc_steal_exc_port(%struct.proc* %108, i64 %109)
  br label %111

111:                                              ; preds = %107, %101
  br label %112

112:                                              ; preds = %111, %92
  %113 = load %struct.proc*, %struct.proc** %9, align 8
  ret %struct.proc* %113
}

declare dso_local %struct.proc* @xmalloc(i32) #1

declare dso_local i32 @proc_debug(%struct.proc*, i8*, ...) #1

declare dso_local i64 @mach_port_request_notification(i32, i64, i32, i32, i64, i32, i64*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @warning(i8*, i64, i32) #1

declare dso_local i32 @safe_strerror(i64) #1

declare dso_local i32 @mach_port_deallocate(i32, i64) #1

declare dso_local i64 @proc_is_task(%struct.proc*) #1

declare dso_local i32 @proc_steal_exc_port(%struct.proc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
