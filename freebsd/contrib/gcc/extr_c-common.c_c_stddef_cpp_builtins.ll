; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_stddef_cpp_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_stddef_cpp_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"__SIZE_TYPE__\00", align 1
@SIZE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"__PTRDIFF_TYPE__\00", align 1
@PTRDIFF_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"__WCHAR_TYPE__\00", align 1
@MODIFIED_WCHAR_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"__WINT_TYPE__\00", align 1
@WINT_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"__INTMAX_TYPE__\00", align 1
@INTMAX_TYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"__UINTMAX_TYPE__\00", align 1
@UINTMAX_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_stddef_cpp_builtins() #0 {
  %1 = load i32, i32* @SIZE_TYPE, align 4
  %2 = call i32 @builtin_define_with_value(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %1, i32 0)
  %3 = load i32, i32* @PTRDIFF_TYPE, align 4
  %4 = call i32 @builtin_define_with_value(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 0)
  %5 = load i32, i32* @MODIFIED_WCHAR_TYPE, align 4
  %6 = call i32 @builtin_define_with_value(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32 0)
  %7 = load i32, i32* @WINT_TYPE, align 4
  %8 = call i32 @builtin_define_with_value(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %7, i32 0)
  %9 = load i32, i32* @INTMAX_TYPE, align 4
  %10 = call i32 @builtin_define_with_value(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %9, i32 0)
  %11 = load i32, i32* @UINTMAX_TYPE, align 4
  %12 = call i32 @builtin_define_with_value(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %11, i32 0)
  ret void
}

declare dso_local i32 @builtin_define_with_value(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
