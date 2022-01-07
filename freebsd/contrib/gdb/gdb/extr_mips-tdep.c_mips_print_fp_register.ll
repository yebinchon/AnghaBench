; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_print_fp_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_print_fp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.frame_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@builtin_type_uint32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" flt: \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" <invalid float> \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%-17.9g\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" dbl: \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"<invalid double>\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%-24.17g\00", align 1
@builtin_type_uint64 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"<invalid float>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, %struct.frame_info*, i32)* @mips_print_fp_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_print_fp_register(%struct.ui_file* %0, %struct.frame_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %4, align 8
  store %struct.frame_info* %1, %struct.frame_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @current_gdbarch, align 4
  %13 = load i32, i32* @current_gdbarch, align 4
  %14 = call %struct.TYPE_2__* @mips_regnum(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @register_size(i32 %12, i32 %16)
  %18 = mul nsw i32 2, %17
  %19 = call i64 @alloca(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %7, align 8
  %21 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call double @REGISTER_NAME(i32 %22)
  %24 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %23)
  %25 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call double @REGISTER_NAME(i32 %26)
  %28 = call i64 @strlen(double %27)
  %29 = trunc i64 %28 to i32
  %30 = sub nsw i32 4, %29
  %31 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @current_gdbarch, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @register_size(i32 %32, i32 %33)
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = call i64 (...) @mips2_fp_compat()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %36, %3
  %40 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @mips_read_fp_register_single(%struct.frame_info* %40, i32 %41, i8* %42)
  %44 = call i32 (...) @mips_float_register_type()
  %45 = load i8*, i8** %7, align 8
  %46 = call double @unpack_double(i32 %44, i8* %45, i32* %10)
  store double %46, double* %9, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @builtin_type_uint32, align 4
  %49 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %50 = call i32 @print_scalar_formatted(i8* %47, i32 %48, i8 signext 120, i8 signext 119, %struct.ui_file* %49)
  %51 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %52 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %57 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %62

58:                                               ; preds = %39
  %59 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %60 = load double, double* %9, align 8
  %61 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %6, align 4
  %64 = srem i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @mips_read_fp_register_double(%struct.frame_info* %67, i32 %68, i8* %69)
  %71 = call i32 (...) @mips_double_register_type()
  %72 = load i8*, i8** %7, align 8
  %73 = call double @unpack_double(i32 %71, i8* %72, i32* %11)
  store double %73, double* %8, align 8
  %74 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %75 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %80 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %85

81:                                               ; preds = %66
  %82 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %83 = load double, double* %8, align 8
  %84 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), double %83)
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %62
  br label %130

87:                                               ; preds = %36
  %88 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @mips_read_fp_register_single(%struct.frame_info* %88, i32 %89, i8* %90)
  %92 = call i32 (...) @mips_float_register_type()
  %93 = load i8*, i8** %7, align 8
  %94 = call double @unpack_double(i32 %92, i8* %93, i32* %10)
  store double %94, double* %9, align 8
  %95 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @mips_read_fp_register_double(%struct.frame_info* %95, i32 %96, i8* %97)
  %99 = call i32 (...) @mips_double_register_type()
  %100 = load i8*, i8** %7, align 8
  %101 = call double @unpack_double(i32 %99, i8* %100, i32* %11)
  store double %101, double* %8, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* @builtin_type_uint64, align 4
  %104 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %105 = call i32 @print_scalar_formatted(i8* %102, i32 %103, i8 signext 120, i8 signext 103, %struct.ui_file* %104)
  %106 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %107 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %87
  %111 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %112 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %117

113:                                              ; preds = %87
  %114 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %115 = load double, double* %9, align 8
  %116 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %119 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %124 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %129

125:                                              ; preds = %117
  %126 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %127 = load double, double* %8, align 8
  %128 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), double %127)
  br label %129

129:                                              ; preds = %125, %122
  br label %130

130:                                              ; preds = %129, %86
  ret void
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local double @REGISTER_NAME(i32) #1

declare dso_local i64 @strlen(double) #1

declare dso_local i64 @mips2_fp_compat(...) #1

declare dso_local i32 @mips_read_fp_register_single(%struct.frame_info*, i32, i8*) #1

declare dso_local double @unpack_double(i32, i8*, i32*) #1

declare dso_local i32 @mips_float_register_type(...) #1

declare dso_local i32 @print_scalar_formatted(i8*, i32, i8 signext, i8 signext, %struct.ui_file*) #1

declare dso_local i32 @mips_read_fp_register_double(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @mips_double_register_type(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
