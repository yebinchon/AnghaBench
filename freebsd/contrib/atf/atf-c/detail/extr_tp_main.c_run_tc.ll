; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_run_tc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_run_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unknown test case `%s'\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"__RUNNING_INSIDE_ATF_RUN\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"internal-yes-value\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Running test cases outside of kyua(1) is unsupported\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"No isolation nor timeout control is being applied; you may get unexpected failures; see atf-test-case(4)\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.params*, i32*)* @run_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tc(i32* %0, %struct.params* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.params* %1, %struct.params** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 (...) @atf_no_error()
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.params*, %struct.params** %5, align 8
  %11 = getelementptr inbounds %struct.params, %struct.params* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @atf_tp_has_tc(i32* %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.params*, %struct.params** %5, align 8
  %17 = getelementptr inbounds %struct.params, %struct.params* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usage_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %7, align 4
  br label %82

20:                                               ; preds = %3
  %21 = call i32 @atf_env_has(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = call i32 @atf_env_get(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i64 @strcmp(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %20
  %28 = call i32 @print_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @print_warning(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.params*, %struct.params** %5, align 8
  %32 = getelementptr inbounds %struct.params, %struct.params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %73 [
    i32 129, label %34
    i32 128, label %55
  ]

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.params*, %struct.params** %5, align 8
  %37 = getelementptr inbounds %struct.params, %struct.params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.params*, %struct.params** %5, align 8
  %40 = getelementptr inbounds %struct.params, %struct.params* %39, i32 0, i32 2
  %41 = call i32 @atf_fs_path_cstring(i32* %40)
  %42 = call i32 @atf_tp_run(i32* %35, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @atf_is_error(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @atf_error_free(i32 %49)
  br label %54

51:                                               ; preds = %34
  %52 = load i32, i32* @EXIT_SUCCESS, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  br label %75

55:                                               ; preds = %30
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.params*, %struct.params** %5, align 8
  %58 = getelementptr inbounds %struct.params, %struct.params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @atf_tp_cleanup(i32* %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @atf_is_error(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @atf_error_free(i32 %67)
  br label %72

69:                                               ; preds = %55
  %70 = load i32, i32* @EXIT_SUCCESS, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %64
  br label %75

73:                                               ; preds = %30
  %74 = load i32, i32* @UNREACHABLE, align 4
  br label %75

75:                                               ; preds = %73, %72, %54
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @atf_is_error(i32 %76)
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @INV(i32 %80)
  br label %82

82:                                               ; preds = %75, %15
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @atf_no_error(...) #1

declare dso_local i32 @atf_tp_has_tc(i32*, i32) #1

declare dso_local i32 @usage_error(i8*, i32) #1

declare dso_local i32 @atf_env_has(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @atf_env_get(i8*) #1

declare dso_local i32 @print_warning(i8*) #1

declare dso_local i32 @atf_tp_run(i32*, i32, i32) #1

declare dso_local i32 @atf_fs_path_cstring(i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_error_free(i32) #1

declare dso_local i32 @atf_tp_cleanup(i32*, i32) #1

declare dso_local i32 @INV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
