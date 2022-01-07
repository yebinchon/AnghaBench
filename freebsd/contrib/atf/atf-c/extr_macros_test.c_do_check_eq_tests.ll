; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_macros_test.c_do_check_eq_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_macros_test.c_do_check_eq_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_eq_test = type { i8*, i8*, i32, i64, i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Checking with %s, %s and expecting %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"h_check\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"^passed\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"^failed\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Check failed: .*macros_test.c:[0-9]+: %s$\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check_eq_test*)* @do_check_eq_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_check_eq_tests(%struct.check_eq_test* %0) #0 {
  %2 = alloca %struct.check_eq_test*, align 8
  %3 = alloca %struct.check_eq_test*, align 8
  store %struct.check_eq_test* %0, %struct.check_eq_test** %2, align 8
  %4 = load %struct.check_eq_test*, %struct.check_eq_test** %2, align 8
  %5 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %4, i64 0
  store %struct.check_eq_test* %5, %struct.check_eq_test** %3, align 8
  br label %6

6:                                                ; preds = %60, %1
  %7 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %8 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %63

11:                                               ; preds = %6
  %12 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %13 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %16 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %19 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %17, i8* %23)
  %25 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %26 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %29 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @init_and_run_h_tc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %27, i32 %30)
  %32 = call i32 @exists(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i32 @ATF_CHECK(i32 %32)
  %34 = call i32 @exists(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %35 = call i32 @ATF_CHECK(i32 %34)
  %36 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %37 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %11
  %41 = call i32 (i8*, i8*, ...) @atf_utils_grep_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %42 = call i32 @ATF_REQUIRE(i32 %41)
  br label %51

43:                                               ; preds = %11
  %44 = call i32 (i8*, i8*, ...) @atf_utils_grep_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %45 = call i32 @ATF_REQUIRE(i32 %44)
  %46 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %47 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i8*, ...) @atf_utils_grep_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %48)
  %50 = call i32 @ATF_CHECK(i32 %49)
  br label %51

51:                                               ; preds = %43, %40
  %52 = call i32 @unlink(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i32 %52, -1
  %54 = zext i1 %53 to i32
  %55 = call i32 @ATF_CHECK(i32 %54)
  %56 = call i32 @unlink(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i32 %56, -1
  %58 = zext i1 %57 to i32
  %59 = call i32 @ATF_CHECK(i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load %struct.check_eq_test*, %struct.check_eq_test** %3, align 8
  %62 = getelementptr inbounds %struct.check_eq_test, %struct.check_eq_test* %61, i32 1
  store %struct.check_eq_test* %62, %struct.check_eq_test** %3, align 8
  br label %6

63:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @init_and_run_h_tc(i8*, i32*, i32) #1

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i32 @exists(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @atf_utils_grep_file(i8*, i8*, ...) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
