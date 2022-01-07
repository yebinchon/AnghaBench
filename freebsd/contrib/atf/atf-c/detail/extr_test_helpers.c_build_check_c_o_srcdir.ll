; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_test_helpers.c_build_check_c_o_srcdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_test_helpers.c_build_check_c_o_srcdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"srcdir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_check_c_o_srcdir(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @atf_tc_get_config_var(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @atf_fs_path_init_fmt(i32* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %9)
  %11 = call i32 @RE(i32 %10)
  %12 = call i32 @atf_fs_path_cstring(i32* %5)
  %13 = call i32 @build_check_c_o(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = call i32 @atf_fs_path_fini(i32* %5)
  %15 = load i32, i32* %6, align 4
  ret i32 %15
}

declare dso_local i32 @RE(i32) #1

declare dso_local i32 @atf_fs_path_init_fmt(i32*, i8*, i32, i8*) #1

declare dso_local i32 @atf_tc_get_config_var(i32*, i8*) #1

declare dso_local i32 @build_check_c_o(i32) #1

declare dso_local i32 @atf_fs_path_cstring(i32*) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
