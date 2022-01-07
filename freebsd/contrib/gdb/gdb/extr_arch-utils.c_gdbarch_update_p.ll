; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_gdbarch_update_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_gdbarch_update_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@gdbarch_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"gdbarch_update_p: Architecture not found\0A\00", align 1
@current_gdbarch = common dso_local global %struct.gdbarch* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"gdbarch_update_p: Architecture 0x%08lx (%s) unchanged\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"gdbarch_update_p: New architecture 0x%08lx (%s) selected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbarch_update_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdbarch_info, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.gdbarch* @gdbarch_find_by_info(i32 %7)
  store %struct.gdbarch* %8, %struct.gdbarch** %4, align 8
  %9 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %10 = icmp eq %struct.gdbarch* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i64, i64* @gdbarch_debug, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @gdb_stdlog, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %11
  store i32 0, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %20 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %21 = icmp eq %struct.gdbarch* %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64, i64* @gdbarch_debug, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* @gdb_stdlog, align 4
  %27 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %28 = ptrtoint %struct.gdbarch* %27 to i64
  %29 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %30 = call %struct.TYPE_2__* @gdbarch_bfd_arch_info(%struct.gdbarch* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %28, i32 %32)
  br label %34

34:                                               ; preds = %25, %22
  store i32 1, i32* %2, align 4
  br label %50

35:                                               ; preds = %18
  %36 = load i64, i64* @gdbarch_debug, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* @gdb_stdlog, align 4
  %40 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %41 = ptrtoint %struct.gdbarch* %40 to i64
  %42 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %43 = call %struct.TYPE_2__* @gdbarch_bfd_arch_info(%struct.gdbarch* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %39, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %41, i32 %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %49 = call i32 @deprecated_current_gdbarch_select_hack(%struct.gdbarch* %48)
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %34, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.gdbarch* @gdbarch_find_by_info(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @gdbarch_bfd_arch_info(%struct.gdbarch*) #1

declare dso_local i32 @deprecated_current_gdbarch_select_hack(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
