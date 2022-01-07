; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-lang.c_build_fortran_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-lang.c_build_fortran_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@TYPE_CODE_VOID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@builtin_type_f_void = common dso_local global i8* null, align 8
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@builtin_type_f_character = common dso_local global i8* null, align 8
@TYPE_CODE_BOOL = common dso_local global i32 0, align 4
@TYPE_FLAG_UNSIGNED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"logical*1\00", align 1
@builtin_type_f_logical_s1 = common dso_local global i8* null, align 8
@TARGET_SHORT_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"integer*2\00", align 1
@builtin_type_f_integer_s2 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"logical*2\00", align 1
@builtin_type_f_logical_s2 = common dso_local global i8* null, align 8
@TARGET_INT_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@builtin_type_f_integer = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"logical*4\00", align 1
@builtin_type_f_logical = common dso_local global i8* null, align 8
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@TARGET_FLOAT_BIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@builtin_type_f_real = common dso_local global i8* null, align 8
@TARGET_DOUBLE_BIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"real*8\00", align 1
@builtin_type_f_real_s8 = common dso_local global i8* null, align 8
@TARGET_LONG_DOUBLE_BIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"real*16\00", align 1
@builtin_type_f_real_s16 = common dso_local global i8* null, align 8
@TYPE_CODE_COMPLEX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"complex*8\00", align 1
@builtin_type_f_complex_s8 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"complex*16\00", align 1
@builtin_type_f_complex_s16 = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"complex*32\00", align 1
@builtin_type_f_complex_s32 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @build_fortran_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_fortran_types() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @TYPE_CODE_VOID, align 4
  %5 = call i8* @init_type(i32 %4, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.objfile* null)
  store i8* %5, i8** @builtin_type_f_void, align 8
  %6 = load i32, i32* @TYPE_CODE_INT, align 4
  %7 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %8 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %9 = sdiv i32 %7, %8
  %10 = call i8* @init_type(i32 %6, i32 %9, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.objfile* null)
  store i8* %10, i8** @builtin_type_f_character, align 8
  %11 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %12 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %13 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %14 = sdiv i32 %12, %13
  %15 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %16 = call i8* @init_type(i32 %11, i32 %14, i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.objfile* null)
  store i8* %16, i8** @builtin_type_f_logical_s1, align 8
  %17 = load i32, i32* @TYPE_CODE_INT, align 4
  %18 = load i32, i32* @TARGET_SHORT_BIT, align 4
  %19 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %20 = sdiv i32 %18, %19
  %21 = call i8* @init_type(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.objfile* null)
  store i8* %21, i8** @builtin_type_f_integer_s2, align 8
  %22 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %23 = load i32, i32* @TARGET_SHORT_BIT, align 4
  %24 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %25 = sdiv i32 %23, %24
  %26 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %27 = call i8* @init_type(i32 %22, i32 %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.objfile* null)
  store i8* %27, i8** @builtin_type_f_logical_s2, align 8
  %28 = load i32, i32* @TYPE_CODE_INT, align 4
  %29 = load i32, i32* @TARGET_INT_BIT, align 4
  %30 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %31 = sdiv i32 %29, %30
  %32 = call i8* @init_type(i32 %28, i32 %31, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.objfile* null)
  store i8* %32, i8** @builtin_type_f_integer, align 8
  %33 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %34 = load i32, i32* @TARGET_INT_BIT, align 4
  %35 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %38 = call i8* @init_type(i32 %33, i32 %36, i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.objfile* null)
  store i8* %38, i8** @builtin_type_f_logical, align 8
  %39 = load i32, i32* @TYPE_CODE_FLT, align 4
  %40 = load i32, i32* @TARGET_FLOAT_BIT, align 4
  %41 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %42 = sdiv i32 %40, %41
  %43 = call i8* @init_type(i32 %39, i32 %42, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.objfile* null)
  store i8* %43, i8** @builtin_type_f_real, align 8
  %44 = load i32, i32* @TYPE_CODE_FLT, align 4
  %45 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %46 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %47 = sdiv i32 %45, %46
  %48 = call i8* @init_type(i32 %44, i32 %47, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.objfile* null)
  store i8* %48, i8** @builtin_type_f_real_s8, align 8
  %49 = load i32, i32* @TYPE_CODE_FLT, align 4
  %50 = load i32, i32* @TARGET_LONG_DOUBLE_BIT, align 4
  %51 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %52 = sdiv i32 %50, %51
  %53 = call i8* @init_type(i32 %49, i32 %52, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct.objfile* null)
  store i8* %53, i8** @builtin_type_f_real_s16, align 8
  %54 = load i32, i32* @TYPE_CODE_COMPLEX, align 4
  %55 = load i32, i32* @TARGET_FLOAT_BIT, align 4
  %56 = mul nsw i32 2, %55
  %57 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %58 = sdiv i32 %56, %57
  %59 = call i8* @init_type(i32 %54, i32 %58, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), %struct.objfile* null)
  store i8* %59, i8** @builtin_type_f_complex_s8, align 8
  %60 = load i8*, i8** @builtin_type_f_real, align 8
  store i8* %60, i8** %1, align 8
  %61 = load i32, i32* @TYPE_CODE_COMPLEX, align 4
  %62 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %63 = mul nsw i32 2, %62
  %64 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %65 = sdiv i32 %63, %64
  %66 = call i8* @init_type(i32 %61, i32 %65, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), %struct.objfile* null)
  store i8* %66, i8** @builtin_type_f_complex_s16, align 8
  %67 = load i8*, i8** @builtin_type_f_real_s8, align 8
  store i8* %67, i8** %2, align 8
  %68 = load i32, i32* @TYPE_CODE_COMPLEX, align 4
  %69 = load i32, i32* @TARGET_LONG_DOUBLE_BIT, align 4
  %70 = mul nsw i32 2, %69
  %71 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %72 = sdiv i32 %70, %71
  %73 = call i8* @init_type(i32 %68, i32 %72, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), %struct.objfile* null)
  store i8* %73, i8** @builtin_type_f_complex_s32, align 8
  %74 = load i8*, i8** @builtin_type_f_real_s16, align 8
  store i8* %74, i8** %3, align 8
  ret void
}

declare dso_local i8* @init_type(i32, i32, i32, i8*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
