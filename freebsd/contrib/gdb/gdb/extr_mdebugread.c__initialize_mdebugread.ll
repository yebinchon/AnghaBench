; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c__initialize_mdebugread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c__initialize_mdebugread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@TYPE_CODE_VOID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@mdebug_type_void = common dso_local global i8* null, align 8
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@mdebug_type_char = common dso_local global i8* null, align 8
@TYPE_FLAG_UNSIGNED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@mdebug_type_unsigned_char = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@mdebug_type_short = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@mdebug_type_unsigned_short = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@mdebug_type_int_32 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@mdebug_type_unsigned_int_32 = common dso_local global i8* null, align 8
@mdebug_type_int_64 = common dso_local global i8* null, align 8
@mdebug_type_unsigned_int_64 = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@mdebug_type_long_32 = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@mdebug_type_unsigned_long_32 = common dso_local global i8* null, align 8
@mdebug_type_long_64 = common dso_local global i8* null, align 8
@mdebug_type_unsigned_long_64 = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@mdebug_type_long_long_64 = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@mdebug_type_unsigned_long_long_64 = common dso_local global i8* null, align 8
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"adr_32\00", align 1
@mdebug_type_adr_32 = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"adr_64\00", align 1
@mdebug_type_adr_64 = common dso_local global i8* null, align 8
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@TARGET_FLOAT_BIT = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@mdebug_type_float = common dso_local global i8* null, align 8
@TARGET_DOUBLE_BIT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@mdebug_type_double = common dso_local global i8* null, align 8
@TYPE_CODE_COMPLEX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@mdebug_type_complex = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"double complex\00", align 1
@mdebug_type_double_complex = common dso_local global i8* null, align 8
@TYPE_CODE_STRING = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@mdebug_type_string = common dso_local global i8* null, align 8
@TARGET_INT_BIT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"fixed decimal\00", align 1
@mdebug_type_fixed_dec = common dso_local global i8* null, align 8
@TYPE_CODE_ERROR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"floating decimal\00", align 1
@mdebug_type_float_dec = common dso_local global i8* null, align 8
@TYPE_CODE_FUNC = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"<function, no debug info>\00", align 1
@nodebug_func_symbol_type = common dso_local global i8* null, align 8
@mdebug_type_int = common dso_local global i8* null, align 8
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [26 x i8] c"<variable, no debug info>\00", align 1
@nodebug_var_symbol_type = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_mdebugread() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @TYPE_CODE_VOID, align 4
  %7 = call i8* @init_type(i32 %6, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.objfile* null)
  store i8* %7, i8** @mdebug_type_void, align 8
  %8 = load i32, i32* @TYPE_CODE_INT, align 4
  %9 = call i8* @init_type(i32 %8, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.objfile* null)
  store i8* %9, i8** @mdebug_type_char, align 8
  %10 = load i32, i32* @TYPE_CODE_INT, align 4
  %11 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %12 = call i8* @init_type(i32 %10, i32 1, i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.objfile* null)
  store i8* %12, i8** @mdebug_type_unsigned_char, align 8
  %13 = load i32, i32* @TYPE_CODE_INT, align 4
  %14 = call i8* @init_type(i32 %13, i32 2, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.objfile* null)
  store i8* %14, i8** @mdebug_type_short, align 8
  %15 = load i32, i32* @TYPE_CODE_INT, align 4
  %16 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %17 = call i8* @init_type(i32 %15, i32 2, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.objfile* null)
  store i8* %17, i8** @mdebug_type_unsigned_short, align 8
  %18 = load i32, i32* @TYPE_CODE_INT, align 4
  %19 = call i8* @init_type(i32 %18, i32 4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.objfile* null)
  store i8* %19, i8** @mdebug_type_int_32, align 8
  %20 = load i32, i32* @TYPE_CODE_INT, align 4
  %21 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %22 = call i8* @init_type(i32 %20, i32 4, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.objfile* null)
  store i8* %22, i8** @mdebug_type_unsigned_int_32, align 8
  %23 = load i32, i32* @TYPE_CODE_INT, align 4
  %24 = call i8* @init_type(i32 %23, i32 8, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.objfile* null)
  store i8* %24, i8** @mdebug_type_int_64, align 8
  %25 = load i32, i32* @TYPE_CODE_INT, align 4
  %26 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %27 = call i8* @init_type(i32 %25, i32 8, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.objfile* null)
  store i8* %27, i8** @mdebug_type_unsigned_int_64, align 8
  %28 = load i32, i32* @TYPE_CODE_INT, align 4
  %29 = call i8* @init_type(i32 %28, i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.objfile* null)
  store i8* %29, i8** @mdebug_type_long_32, align 8
  %30 = load i32, i32* @TYPE_CODE_INT, align 4
  %31 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %32 = call i8* @init_type(i32 %30, i32 4, i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), %struct.objfile* null)
  store i8* %32, i8** @mdebug_type_unsigned_long_32, align 8
  %33 = load i32, i32* @TYPE_CODE_INT, align 4
  %34 = call i8* @init_type(i32 %33, i32 8, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.objfile* null)
  store i8* %34, i8** @mdebug_type_long_64, align 8
  %35 = load i32, i32* @TYPE_CODE_INT, align 4
  %36 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %37 = call i8* @init_type(i32 %35, i32 8, i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), %struct.objfile* null)
  store i8* %37, i8** @mdebug_type_unsigned_long_64, align 8
  %38 = load i32, i32* @TYPE_CODE_INT, align 4
  %39 = call i8* @init_type(i32 %38, i32 8, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.objfile* null)
  store i8* %39, i8** @mdebug_type_long_long_64, align 8
  %40 = load i32, i32* @TYPE_CODE_INT, align 4
  %41 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %42 = call i8* @init_type(i32 %40, i32 8, i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), %struct.objfile* null)
  store i8* %42, i8** @mdebug_type_unsigned_long_long_64, align 8
  %43 = load i32, i32* @TYPE_CODE_PTR, align 4
  %44 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %45 = call i8* @init_type(i32 %43, i32 4, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct.objfile* null)
  store i8* %45, i8** @mdebug_type_adr_32, align 8
  %46 = load i8*, i8** @mdebug_type_void, align 8
  store i8* %46, i8** %1, align 8
  %47 = load i32, i32* @TYPE_CODE_PTR, align 4
  %48 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %49 = call i8* @init_type(i32 %47, i32 8, i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), %struct.objfile* null)
  store i8* %49, i8** @mdebug_type_adr_64, align 8
  %50 = load i8*, i8** @mdebug_type_void, align 8
  store i8* %50, i8** %2, align 8
  %51 = load i32, i32* @TYPE_CODE_FLT, align 4
  %52 = load i32, i32* @TARGET_FLOAT_BIT, align 4
  %53 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %54 = sdiv i32 %52, %53
  %55 = call i8* @init_type(i32 %51, i32 %54, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %struct.objfile* null)
  store i8* %55, i8** @mdebug_type_float, align 8
  %56 = load i32, i32* @TYPE_CODE_FLT, align 4
  %57 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %58 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %59 = sdiv i32 %57, %58
  %60 = call i8* @init_type(i32 %56, i32 %59, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %struct.objfile* null)
  store i8* %60, i8** @mdebug_type_double, align 8
  %61 = load i32, i32* @TYPE_CODE_COMPLEX, align 4
  %62 = load i32, i32* @TARGET_FLOAT_BIT, align 4
  %63 = mul nsw i32 2, %62
  %64 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %65 = sdiv i32 %63, %64
  %66 = call i8* @init_type(i32 %61, i32 %65, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct.objfile* null)
  store i8* %66, i8** @mdebug_type_complex, align 8
  %67 = load i8*, i8** @mdebug_type_float, align 8
  store i8* %67, i8** %3, align 8
  %68 = load i32, i32* @TYPE_CODE_COMPLEX, align 4
  %69 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %70 = mul nsw i32 2, %69
  %71 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %72 = sdiv i32 %70, %71
  %73 = call i8* @init_type(i32 %68, i32 %72, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), %struct.objfile* null)
  store i8* %73, i8** @mdebug_type_double_complex, align 8
  %74 = load i8*, i8** @mdebug_type_double, align 8
  store i8* %74, i8** %4, align 8
  %75 = load i32, i32* @TYPE_CODE_STRING, align 4
  %76 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %77 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %78 = sdiv i32 %76, %77
  %79 = call i8* @init_type(i32 %75, i32 %78, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %struct.objfile* null)
  store i8* %79, i8** @mdebug_type_string, align 8
  %80 = load i32, i32* @TYPE_CODE_INT, align 4
  %81 = load i32, i32* @TARGET_INT_BIT, align 4
  %82 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %83 = sdiv i32 %81, %82
  %84 = call i8* @init_type(i32 %80, i32 %83, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), %struct.objfile* null)
  store i8* %84, i8** @mdebug_type_fixed_dec, align 8
  %85 = load i32, i32* @TYPE_CODE_ERROR, align 4
  %86 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %87 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %88 = sdiv i32 %86, %87
  %89 = call i8* @init_type(i32 %85, i32 %88, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), %struct.objfile* null)
  store i8* %89, i8** @mdebug_type_float_dec, align 8
  %90 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %91 = call i8* @init_type(i32 %90, i32 1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), %struct.objfile* null)
  store i8* %91, i8** @nodebug_func_symbol_type, align 8
  %92 = load i8*, i8** @mdebug_type_int, align 8
  store i8* %92, i8** %5, align 8
  %93 = load i32, i32* @TYPE_CODE_INT, align 4
  %94 = load i32, i32* @TARGET_INT_BIT, align 4
  %95 = load i32, i32* @HOST_CHAR_BIT, align 4
  %96 = sdiv i32 %94, %95
  %97 = call i8* @init_type(i32 %93, i32 %96, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), %struct.objfile* null)
  store i8* %97, i8** @nodebug_var_symbol_type, align 8
  ret void
}

declare dso_local i8* @init_type(i32, i32, i32, i8*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
