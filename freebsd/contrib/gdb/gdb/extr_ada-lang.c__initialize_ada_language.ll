; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c__initialize_ada_language.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c__initialize_ada_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TARGET_INT_BIT = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@builtin_type_ada_int = common dso_local global i8* null, align 8
@TARGET_LONG_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"long_integer\00", align 1
@builtin_type_ada_long = common dso_local global i8* null, align 8
@TARGET_SHORT_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"short_integer\00", align 1
@builtin_type_ada_short = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@builtin_type_ada_char = common dso_local global i8* null, align 8
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@TARGET_FLOAT_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@builtin_type_ada_float = common dso_local global i8* null, align 8
@TARGET_DOUBLE_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"long_float\00", align 1
@builtin_type_ada_double = common dso_local global i8* null, align 8
@TARGET_LONG_LONG_BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"long_long_integer\00", align 1
@builtin_type_ada_long_long = common dso_local global i8* null, align 8
@TARGET_LONG_DOUBLE_BIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"long_long_float\00", align 1
@builtin_type_ada_long_double = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"natural\00", align 1
@builtin_type_ada_natural = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"positive\00", align 1
@builtin_type_ada_positive = common dso_local global i8* null, align 8
@TYPE_CODE_VOID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@builtin_type_ada_system_address = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"system__address\00", align 1
@ada_language_defn = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"varsize-limit\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_uinteger = common dso_local global i32 0, align 4
@varsize_limit = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"Set maximum bytes in dynamic-sized object.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@class_breakpoint = common dso_local global i32 0, align 4
@begin_command = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [160 x i8] c"Start the debugged program, stopping at the beginning of the\0Amain program.  You may specify command-line arguments to give it, as for\0Athe \22run\22 command (q.v.).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_ada_language() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @TYPE_CODE_INT, align 4
  %3 = load i32, i32* @TARGET_INT_BIT, align 4
  %4 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %5 = sdiv i32 %3, %4
  %6 = call i8* @init_type(i32 %2, i32 %5, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.objfile* null)
  store i8* %6, i8** @builtin_type_ada_int, align 8
  %7 = load i32, i32* @TYPE_CODE_INT, align 4
  %8 = load i32, i32* @TARGET_LONG_BIT, align 4
  %9 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %10 = sdiv i32 %8, %9
  %11 = call i8* @init_type(i32 %7, i32 %10, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.objfile* null)
  store i8* %11, i8** @builtin_type_ada_long, align 8
  %12 = load i32, i32* @TYPE_CODE_INT, align 4
  %13 = load i32, i32* @TARGET_SHORT_BIT, align 4
  %14 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %15 = sdiv i32 %13, %14
  %16 = call i8* @init_type(i32 %12, i32 %15, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.objfile* null)
  store i8* %16, i8** @builtin_type_ada_short, align 8
  %17 = load i32, i32* @TYPE_CODE_INT, align 4
  %18 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %19 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %20 = sdiv i32 %18, %19
  %21 = call i8* @init_type(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.objfile* null)
  store i8* %21, i8** @builtin_type_ada_char, align 8
  %22 = load i32, i32* @TYPE_CODE_FLT, align 4
  %23 = load i32, i32* @TARGET_FLOAT_BIT, align 4
  %24 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %25 = sdiv i32 %23, %24
  %26 = call i8* @init_type(i32 %22, i32 %25, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.objfile* null)
  store i8* %26, i8** @builtin_type_ada_float, align 8
  %27 = load i32, i32* @TYPE_CODE_FLT, align 4
  %28 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %29 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %30 = sdiv i32 %28, %29
  %31 = call i8* @init_type(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct.objfile* null)
  store i8* %31, i8** @builtin_type_ada_double, align 8
  %32 = load i32, i32* @TYPE_CODE_INT, align 4
  %33 = load i32, i32* @TARGET_LONG_LONG_BIT, align 4
  %34 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i8* @init_type(i32 %32, i32 %35, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), %struct.objfile* null)
  store i8* %36, i8** @builtin_type_ada_long_long, align 8
  %37 = load i32, i32* @TYPE_CODE_FLT, align 4
  %38 = load i32, i32* @TARGET_LONG_DOUBLE_BIT, align 4
  %39 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %40 = sdiv i32 %38, %39
  %41 = call i8* @init_type(i32 %37, i32 %40, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), %struct.objfile* null)
  store i8* %41, i8** @builtin_type_ada_long_double, align 8
  %42 = load i32, i32* @TYPE_CODE_INT, align 4
  %43 = load i32, i32* @TARGET_INT_BIT, align 4
  %44 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %45 = sdiv i32 %43, %44
  %46 = call i8* @init_type(i32 %42, i32 %45, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.objfile* null)
  store i8* %46, i8** @builtin_type_ada_natural, align 8
  %47 = load i32, i32* @TYPE_CODE_INT, align 4
  %48 = load i32, i32* @TARGET_INT_BIT, align 4
  %49 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %50 = sdiv i32 %48, %49
  %51 = call i8* @init_type(i32 %47, i32 %50, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.objfile* null)
  store i8* %51, i8** @builtin_type_ada_positive, align 8
  %52 = load i32, i32* @TYPE_CODE_VOID, align 4
  %53 = call i8* @init_type(i32 %52, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.objfile* null)
  %54 = call i32 @lookup_pointer_type(i8* %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** @builtin_type_ada_system_address, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %1, align 8
  %57 = call i32 @add_language(i32* @ada_language_defn)
  %58 = load i32, i32* @class_support, align 4
  %59 = load i32, i32* @var_uinteger, align 4
  %60 = call i32 @add_set_cmd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %58, i32 %59, i8* bitcast (i32* @varsize_limit to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32* @setlist)
  %61 = call i32 @add_show_from_set(i32 %60, i32* @showlist)
  store i32 65536, i32* @varsize_limit, align 4
  %62 = load i32, i32* @class_breakpoint, align 4
  %63 = load i32, i32* @begin_command, align 4
  %64 = call i32 @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %62, i32 %63, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i8* @init_type(i32, i32, i32, i8*, %struct.objfile*) #1

declare dso_local i32 @lookup_pointer_type(i8*) #1

declare dso_local i32 @add_language(i32*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
