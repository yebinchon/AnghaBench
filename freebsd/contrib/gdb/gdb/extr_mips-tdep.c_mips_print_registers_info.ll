; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_print_registers_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_print_registers_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.frame_info = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Not a valid register for the current processor type\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@MIPS_NUMREGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i32, i32)* @mips_print_registers_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_print_registers_info(%struct.gdbarch* %0, %struct.ui_file* %1, %struct.frame_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gdbarch*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca %struct.frame_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %6, align 8
  store %struct.ui_file* %1, %struct.ui_file** %7, align 8
  store %struct.frame_info* %2, %struct.frame_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %33

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NUM_REGS, align 4
  %16 = icmp sge i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gdb_assert(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i8* @REGISTER_NAME(i32 %19)
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %13
  %27 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %28 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mips_print_register(%struct.ui_file* %27, %struct.frame_info* %28, i32 %29, i32 0)
  %31 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %32 = call i32 @fprintf_filtered(%struct.ui_file* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %70

33:                                               ; preds = %5
  %34 = load i32, i32* @NUM_REGS, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %68, %33
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @NUM_REGS, align 4
  %38 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @gdbarch_register_type(%struct.gdbarch* %42, i32 %43)
  %45 = call i64 @TYPE_CODE(i32 %44)
  %46 = load i64, i64* @TYPE_CODE_FLT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %53 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @print_fp_register_row(%struct.ui_file* %52, %struct.frame_info* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %62

56:                                               ; preds = %48
  %57 = load i64, i64* @MIPS_NUMREGS, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %51
  br label %68

63:                                               ; preds = %41
  %64 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %65 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @print_gp_register_row(%struct.ui_file* %64, %struct.frame_info* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %63, %62
  br label %35

69:                                               ; preds = %35
  br label %70

70:                                               ; preds = %69, %26
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @mips_print_register(%struct.ui_file*, %struct.frame_info*, i32, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @gdbarch_register_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @print_fp_register_row(%struct.ui_file*, %struct.frame_info*, i32) #1

declare dso_local i32 @print_gp_register_row(%struct.ui_file*, %struct.frame_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
