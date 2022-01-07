; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-lang.c__initialize_f_language.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-lang.c__initialize_f_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@builtin_type_f_character = common dso_local global i32 0, align 4
@builtin_type_f_logical = common dso_local global i32 0, align 4
@builtin_type_f_logical_s1 = common dso_local global i32 0, align 4
@builtin_type_f_logical_s2 = common dso_local global i32 0, align 4
@builtin_type_f_integer = common dso_local global i32 0, align 4
@builtin_type_f_integer_s2 = common dso_local global i32 0, align 4
@builtin_type_f_real = common dso_local global i32 0, align 4
@builtin_type_f_real_s8 = common dso_local global i32 0, align 4
@builtin_type_f_real_s16 = common dso_local global i32 0, align 4
@builtin_type_f_complex_s8 = common dso_local global i32 0, align 4
@builtin_type_f_complex_s16 = common dso_local global i32 0, align 4
@builtin_type_f_complex_s32 = common dso_local global i32 0, align 4
@builtin_type_f_void = common dso_local global i32 0, align 4
@builtin_type_string = common dso_local global i32 0, align 4
@TYPE_CODE_STRING = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"character string\00", align 1
@f_language_defn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_f_language() #0 {
  %1 = call i32 (...) @build_fortran_types()
  %2 = load i32, i32* @builtin_type_f_character, align 4
  %3 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %2)
  %4 = load i32, i32* @builtin_type_f_logical, align 4
  %5 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %4)
  %6 = load i32, i32* @builtin_type_f_logical_s1, align 4
  %7 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %6)
  %8 = load i32, i32* @builtin_type_f_logical_s2, align 4
  %9 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %8)
  %10 = load i32, i32* @builtin_type_f_integer, align 4
  %11 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %10)
  %12 = load i32, i32* @builtin_type_f_integer_s2, align 4
  %13 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %12)
  %14 = load i32, i32* @builtin_type_f_real, align 4
  %15 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %14)
  %16 = load i32, i32* @builtin_type_f_real_s8, align 4
  %17 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %16)
  %18 = load i32, i32* @builtin_type_f_real_s16, align 4
  %19 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %18)
  %20 = load i32, i32* @builtin_type_f_complex_s8, align 4
  %21 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %20)
  %22 = load i32, i32* @builtin_type_f_complex_s16, align 4
  %23 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %22)
  %24 = load i32, i32* @builtin_type_f_complex_s32, align 4
  %25 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %24)
  %26 = load i32, i32* @builtin_type_f_void, align 4
  %27 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %26)
  %28 = load i32, i32* @builtin_type_string, align 4
  %29 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %28)
  %30 = call i32 @deprecated_register_gdbarch_swap(i32* null, i32 0, i32 (...)* @build_fortran_types)
  %31 = load i32, i32* @TYPE_CODE_STRING, align 4
  %32 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %33 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %34 = sdiv i32 %32, %33
  %35 = call i32 @init_type(i32 %31, i32 %34, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.objfile* null)
  store i32 %35, i32* @builtin_type_string, align 4
  %36 = call i32 @add_language(i32* @f_language_defn)
  ret void
}

declare dso_local i32 @build_fortran_types(...) #1

declare dso_local i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32) #1

declare dso_local i32 @deprecated_register_gdbarch_swap(i32*, i32, i32 (...)*) #1

declare dso_local i32 @init_type(i32, i32, i32, i8*, %struct.objfile*) #1

declare dso_local i32 @add_language(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
