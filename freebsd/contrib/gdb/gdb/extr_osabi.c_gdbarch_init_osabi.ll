; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_osabi.c_gdbarch_init_osabi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_osabi.c_gdbarch_init_osabi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdb_osabi_handler = type { i64, i32 (i64, %struct.TYPE_2__*, %struct.gdbarch*)*, i32, %struct.gdb_osabi_handler* }
%struct.TYPE_2__ = type { i32 }
%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i64, %struct.TYPE_2__* }

@GDB_OSABI_UNKNOWN = common dso_local global i64 0, align 8
@gdb_osabi_handler_list = common dso_local global %struct.gdb_osabi_handler* null, align 8
@.str = private unnamed_addr constant [130 x i8] c"A handler for the OS ABI \22%s\22 is not built into this configuration\0Aof GDB.  Attempting to continue with the default %s settings.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbarch_init_osabi(i64 %0, %struct.TYPE_2__* %1, %struct.gdbarch* %2) #0 {
  %4 = alloca %struct.gdbarch_info, align 8
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.gdb_osabi_handler*, align 8
  %7 = bitcast %struct.gdbarch_info* %4 to { i64, %struct.TYPE_2__* }*
  %8 = getelementptr inbounds { i64, %struct.TYPE_2__* }, { i64, %struct.TYPE_2__* }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, %struct.TYPE_2__* }, { i64, %struct.TYPE_2__* }* %7, i32 0, i32 1
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %9, align 8
  store %struct.gdbarch* %2, %struct.gdbarch** %5, align 8
  %10 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GDB_OSABI_UNKNOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %61

15:                                               ; preds = %3
  %16 = load %struct.gdb_osabi_handler*, %struct.gdb_osabi_handler** @gdb_osabi_handler_list, align 8
  store %struct.gdb_osabi_handler* %16, %struct.gdb_osabi_handler** %6, align 8
  br label %17

17:                                               ; preds = %48, %15
  %18 = load %struct.gdb_osabi_handler*, %struct.gdb_osabi_handler** %6, align 8
  %19 = icmp ne %struct.gdb_osabi_handler* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load %struct.gdb_osabi_handler*, %struct.gdb_osabi_handler** %6, align 8
  %22 = getelementptr inbounds %struct.gdb_osabi_handler, %struct.gdb_osabi_handler* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %48

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %4, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.gdb_osabi_handler*, %struct.gdb_osabi_handler** %6, align 8
  %32 = getelementptr inbounds %struct.gdb_osabi_handler, %struct.gdb_osabi_handler* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @can_run_code_for(%struct.TYPE_2__* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load %struct.gdb_osabi_handler*, %struct.gdb_osabi_handler** %6, align 8
  %38 = getelementptr inbounds %struct.gdb_osabi_handler, %struct.gdb_osabi_handler* %37, i32 0, i32 1
  %39 = load i32 (i64, %struct.TYPE_2__*, %struct.gdbarch*)*, i32 (i64, %struct.TYPE_2__*, %struct.gdbarch*)** %38, align 8
  %40 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %41 = bitcast %struct.gdbarch_info* %4 to { i64, %struct.TYPE_2__* }*
  %42 = getelementptr inbounds { i64, %struct.TYPE_2__* }, { i64, %struct.TYPE_2__* }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, %struct.TYPE_2__* }, { i64, %struct.TYPE_2__* }* %41, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i32 %39(i64 %43, %struct.TYPE_2__* %45, %struct.gdbarch* %40)
  br label %61

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.gdb_osabi_handler*, %struct.gdb_osabi_handler** %6, align 8
  %50 = getelementptr inbounds %struct.gdb_osabi_handler, %struct.gdb_osabi_handler* %49, i32 0, i32 3
  %51 = load %struct.gdb_osabi_handler*, %struct.gdb_osabi_handler** %50, align 8
  store %struct.gdb_osabi_handler* %51, %struct.gdb_osabi_handler** %6, align 8
  br label %17

52:                                               ; preds = %17
  %53 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %4, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @gdbarch_osabi_name(i64 %54)
  %56 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %4, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @warning(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %52, %36, %14
  ret void
}

declare dso_local i64 @can_run_code_for(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

declare dso_local i32 @gdbarch_osabi_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
