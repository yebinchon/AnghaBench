; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_check_prog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_check_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.prog_found_pair = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@atf_fs_access_x = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"The required program %s could not be found\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Relative paths are not allowed when searching for a program (%s)\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@check_prog_in_dir = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"The required program %s could not be found in the PATH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, i8*)* @check_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_prog(%struct.context* %0, i8* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.prog_found_pair, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @atf_fs_path_init_fmt(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @atf_is_error(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %81

18:                                               ; preds = %2
  %19 = call i64 @atf_fs_path_is_absolute(i32* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i32, i32* @atf_fs_access_x, align 4
  %23 = call i32 @atf_fs_eaccess(i32* %6, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @atf_is_error(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @atf_error_free(i32 %28)
  %30 = call i32 @atf_fs_path_fini(i32* %6)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @format_reason_fmt(i32* %7, i32* null, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load %struct.context*, %struct.context** %3, align 8
  %34 = call i32 @skip(%struct.context* %33, i32* %7)
  br label %35

35:                                               ; preds = %27, %21
  br label %78

36:                                               ; preds = %18
  %37 = call i8* @atf_env_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %37, i8** %8, align 8
  %38 = call i32 @atf_fs_path_branch_path(i32* %6, i32* %10)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @atf_is_error(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %79

43:                                               ; preds = %36
  %44 = call i32 @atf_fs_path_cstring(i32* %10)
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = call i32 @atf_fs_path_fini(i32* %10)
  %49 = call i32 @atf_fs_path_fini(i32* %6)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @report_fatal_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @UNREACHABLE, align 4
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds %struct.prog_found_pair, %struct.prog_found_pair* %9, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %struct.prog_found_pair, %struct.prog_found_pair* %9, i32 0, i32 1
  store i32 0, i32* %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @check_prog_in_dir, align 4
  %59 = call i32 @atf_text_for_each_word(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %58, %struct.prog_found_pair* %9)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @atf_is_error(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %76

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.prog_found_pair, %struct.prog_found_pair* %9, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = call i32 @atf_fs_path_fini(i32* %10)
  %70 = call i32 @atf_fs_path_fini(i32* %6)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @format_reason_fmt(i32* %11, i32* null, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  %73 = load %struct.context*, %struct.context** %3, align 8
  %74 = call i32 @fail_requirement(%struct.context* %73, i32* %11)
  br label %75

75:                                               ; preds = %68, %64
  br label %76

76:                                               ; preds = %75, %63
  %77 = call i32 @atf_fs_path_fini(i32* %10)
  br label %78

78:                                               ; preds = %76, %35
  br label %79

79:                                               ; preds = %78, %42
  %80 = call i32 @atf_fs_path_fini(i32* %6)
  br label %81

81:                                               ; preds = %79, %17
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @atf_fs_path_init_fmt(i32*, i8*, i8*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i64 @atf_fs_path_is_absolute(i32*) #1

declare dso_local i32 @atf_fs_eaccess(i32*, i32) #1

declare dso_local i32 @atf_error_free(i32) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

declare dso_local i32 @format_reason_fmt(i32*, i32*, i32, i8*, i8*) #1

declare dso_local i32 @skip(%struct.context*, i32*) #1

declare dso_local i8* @atf_env_get(i8*) #1

declare dso_local i32 @atf_fs_path_branch_path(i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @atf_fs_path_cstring(i32*) #1

declare dso_local i32 @report_fatal_error(i8*, i8*) #1

declare dso_local i32 @atf_text_for_each_word(i8*, i8*, i32, %struct.prog_found_pair*) #1

declare dso_local i32 @fail_requirement(%struct.context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
