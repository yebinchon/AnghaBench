; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_print_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_print_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.frame_info = type { i32 }
%struct.gdbarch = type { i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s: [Invalid]\00", align 1
@MIPS_NUMREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"(r%d): \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, %struct.frame_info*, i32, i32)* @mips_print_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_print_register(%struct.ui_file* %0, %struct.frame_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca %struct.frame_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gdbarch*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %5, align 8
  store %struct.frame_info* %1, %struct.frame_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %15 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %14)
  store %struct.gdbarch* %15, %struct.gdbarch** %9, align 8
  %16 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.gdbarch*, %struct.gdbarch** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @gdbarch_register_type(%struct.gdbarch* %20, i32 %21)
  %23 = call i64 @TYPE_CODE(i32 %22)
  %24 = load i64, i64* @TYPE_CODE_FLT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %28 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mips_print_fp_register(%struct.ui_file* %27, %struct.frame_info* %28, i32 %29)
  store i32 1, i32* %13, align 4
  br label %78

31:                                               ; preds = %4
  %32 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @frame_register_read(%struct.frame_info* %32, i32 %33, i8* %19)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @REGISTER_NAME(i32 %38)
  %40 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 1, i32* %13, align 4
  br label %78

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @REGISTER_NAME(i32 %42)
  %44 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %45 = call i32 @fputs_filtered(i32 %43, %struct.ui_file* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MIPS_NUMREGS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %41
  %54 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %55 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %58 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* @current_gdbarch, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @register_size(i32 %61, i32 %62)
  %64 = load i32, i32* @current_gdbarch, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @register_size(i32 %64, i32 %65)
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %12, align 4
  br label %69

68:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %19, i64 %71
  %73 = load %struct.gdbarch*, %struct.gdbarch** %9, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @gdbarch_register_type(%struct.gdbarch* %73, i32 %74)
  %76 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %77 = call i32 @print_scalar_formatted(i8* %72, i32 %75, i8 signext 120, i32 0, %struct.ui_file* %76)
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %69, %36, %26
  %79 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %13, align 4
  switch i32 %80, label %82 [
    i32 0, label %81
    i32 1, label %81
  ]

81:                                               ; preds = %78, %78
  ret void

82:                                               ; preds = %78
  unreachable
}

declare dso_local %struct.gdbarch* @get_frame_arch(%struct.frame_info*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @gdbarch_register_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @mips_print_fp_register(%struct.ui_file*, %struct.frame_info*, i32) #1

declare dso_local i32 @frame_register_read(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @REGISTER_NAME(i32) #1

declare dso_local i32 @fputs_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local i32 @print_scalar_formatted(i8*, i32, i8 signext, i32, %struct.ui_file*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
