; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_print_vector_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_print_vector_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.frame_info = type { i32 }

@target_has_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"The program has no registers now.\00", align 1
@deprecated_selected_frame = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"No selected frame.\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@vector_reggroup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"No vector information\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i8*)* @print_vector_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vector_info(%struct.gdbarch* %0, %struct.ui_file* %1, %struct.frame_info* %2, i8* %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store %struct.frame_info* %2, %struct.frame_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @target_has_registers, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i32*, i32** @deprecated_selected_frame, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %22 = call i64 @gdbarch_print_vector_info_p(%struct.gdbarch* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %26 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %27 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @gdbarch_print_vector_info(%struct.gdbarch* %25, %struct.ui_file* %26, %struct.frame_info* %27, i8* %28)
  br label %60

30:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @NUM_REGS, align 4
  %34 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @vector_reggroup, align 4
  %41 = call i64 @gdbarch_register_reggroup_p(%struct.gdbarch* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  %44 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %45 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %46 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @gdbarch_print_registers_info(%struct.gdbarch* %44, %struct.ui_file* %45, %struct.frame_info* %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %43, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %58 = call i32 @fprintf_filtered(%struct.ui_file* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %24
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @gdbarch_print_vector_info_p(%struct.gdbarch*) #1

declare dso_local i32 @gdbarch_print_vector_info(%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i8*) #1

declare dso_local i64 @gdbarch_register_reggroup_p(%struct.gdbarch*, i32, i32) #1

declare dso_local i32 @gdbarch_print_registers_info(%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i32, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
