; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin-c.c_darwin_cpp_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin-c.c_darwin_cpp_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"__MACH__\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"__APPLE__\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"__APPLE_CC__\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@darwin_macosx_version_min = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"__ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @darwin_cpp_builtins(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @builtin_define(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @builtin_define(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @builtin_define_with_value(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %6 = load i64, i64* @darwin_macosx_version_min, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i8* (...) @version_as_macro()
  %10 = call i32 @builtin_define_with_value(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %9, i32 0)
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @builtin_define(i8*) #1

declare dso_local i32 @builtin_define_with_value(i8*, i8*, i32) #1

declare dso_local i8* @version_as_macro(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
