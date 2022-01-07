; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_m2-lang.c__initialize_m2_language.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_m2-lang.c__initialize_m2_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TARGET_INT_BIT = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@builtin_type_m2_int = common dso_local global i8* null, align 8
@TYPE_FLAG_UNSIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CARDINAL\00", align 1
@builtin_type_m2_card = common dso_local global i8* null, align 8
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@TARGET_FLOAT_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@builtin_type_m2_real = common dso_local global i8* null, align 8
@TYPE_CODE_CHAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@builtin_type_m2_char = common dso_local global i8* null, align 8
@TYPE_CODE_BOOL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@builtin_type_m2_bool = common dso_local global i8* null, align 8
@m2_language_defn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_m2_language() #0 {
  %1 = load i32, i32* @TYPE_CODE_INT, align 4
  %2 = load i32, i32* @TARGET_INT_BIT, align 4
  %3 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %4 = sdiv i32 %2, %3
  %5 = call i8* @init_type(i32 %1, i32 %4, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.objfile* null)
  store i8* %5, i8** @builtin_type_m2_int, align 8
  %6 = load i32, i32* @TYPE_CODE_INT, align 4
  %7 = load i32, i32* @TARGET_INT_BIT, align 4
  %8 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %9 = sdiv i32 %7, %8
  %10 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %11 = call i8* @init_type(i32 %6, i32 %9, i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.objfile* null)
  store i8* %11, i8** @builtin_type_m2_card, align 8
  %12 = load i32, i32* @TYPE_CODE_FLT, align 4
  %13 = load i32, i32* @TARGET_FLOAT_BIT, align 4
  %14 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %15 = sdiv i32 %13, %14
  %16 = call i8* @init_type(i32 %12, i32 %15, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.objfile* null)
  store i8* %16, i8** @builtin_type_m2_real, align 8
  %17 = load i32, i32* @TYPE_CODE_CHAR, align 4
  %18 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %19 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %20 = sdiv i32 %18, %19
  %21 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %22 = call i8* @init_type(i32 %17, i32 %20, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.objfile* null)
  store i8* %22, i8** @builtin_type_m2_char, align 8
  %23 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %24 = load i32, i32* @TARGET_INT_BIT, align 4
  %25 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %26 = sdiv i32 %24, %25
  %27 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %28 = call i8* @init_type(i32 %23, i32 %26, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.objfile* null)
  store i8* %28, i8** @builtin_type_m2_bool, align 8
  %29 = call i32 @add_language(i32* @m2_language_defn)
  ret void
}

declare dso_local i8* @init_type(i32, i32, i32, i8*, %struct.objfile*) #1

declare dso_local i32 @add_language(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
