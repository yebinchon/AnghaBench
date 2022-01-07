; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_print_registers_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_print_registers_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i32, i32)* }
%struct.frame_info = type opaque
%struct.ui_file = type { i32 }
%struct.frame_info.0 = type { i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"gdbarch_print_registers_info called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbarch_print_registers_info(%struct.gdbarch* %0, %struct.ui_file* %1, %struct.frame_info.0* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gdbarch*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca %struct.frame_info.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %6, align 8
  store %struct.ui_file* %1, %struct.ui_file** %7, align 8
  store %struct.frame_info.0* %2, %struct.frame_info.0** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %12 = icmp ne %struct.gdbarch* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @gdb_assert(i32 %13)
  %15 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %16 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %15, i32 0, i32 0
  %17 = load i32 (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i32, i32)*, i32 (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i32, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i32, i32)* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @gdb_assert(i32 %19)
  %21 = load i32, i32* @gdbarch_debug, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @gdb_stdlog, align 4
  %25 = call i32 @fprintf_unfiltered(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %5
  %27 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %28 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %27, i32 0, i32 0
  %29 = load i32 (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i32, i32)*, i32 (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i32, i32)** %28, align 8
  %30 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %31 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %32 = load %struct.frame_info.0*, %struct.frame_info.0** %8, align 8
  %33 = bitcast %struct.frame_info.0* %32 to %struct.frame_info*
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 %29(%struct.gdbarch* %30, %struct.ui_file* %31, %struct.frame_info* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
