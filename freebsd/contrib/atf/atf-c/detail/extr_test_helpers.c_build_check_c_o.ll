; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_test_helpers.c_build_check_c_o.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_test_helpers.c_build_check_c_o.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-I%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ATF_INCLUDEDIR\00", align 1
@ATF_INCLUDEDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"-Wall\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"-Werror\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"test.o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_check_c_o(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @ATF_INCLUDEDIR, align 4
  %7 = call i32 @atf_env_get_with_default(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = call i32 @atf_dynstr_init_fmt(i32* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @RE(i32 %8)
  %10 = call i8* @atf_dynstr_cstring(i32* %4)
  %11 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  store i8* %10, i8** %11, align 16
  %12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 3
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %17 = call i32 @atf_check_build_c_o(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %16, i32* %3)
  %18 = call i32 @RE(i32 %17)
  %19 = call i32 @atf_dynstr_fini(i32* %4)
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @RE(i32) #1

declare dso_local i32 @atf_dynstr_init_fmt(i32*, i8*, i32) #1

declare dso_local i32 @atf_env_get_with_default(i8*, i32) #1

declare dso_local i8* @atf_dynstr_cstring(i32*) #1

declare dso_local i32 @atf_check_build_c_o(i8*, i8*, i8**, i32*) #1

declare dso_local i32 @atf_dynstr_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
