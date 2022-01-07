; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_macros_test.c_do_require_eq_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_macros_test.c_do_require_eq_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.require_eq_test = type { i8*, i8*, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Checking with %s, %s and expecting %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"h_require\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"^passed\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"^failed: .*macros_test.c:[0-9]+: %s$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.require_eq_test*)* @do_require_eq_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_require_eq_tests(%struct.require_eq_test* %0) #0 {
  %2 = alloca %struct.require_eq_test*, align 8
  %3 = alloca %struct.require_eq_test*, align 8
  store %struct.require_eq_test* %0, %struct.require_eq_test** %2, align 8
  %4 = load %struct.require_eq_test*, %struct.require_eq_test** %2, align 8
  %5 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %4, i64 0
  store %struct.require_eq_test* %5, %struct.require_eq_test** %3, align 8
  br label %6

6:                                                ; preds = %69, %1
  %7 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %8 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %72

11:                                               ; preds = %6
  %12 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %13 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %16 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %19 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %17, i8* %23)
  %25 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %26 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %29 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @init_and_run_h_tc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %27, i32 %30)
  %32 = call i32 @exists(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i32 @ATF_REQUIRE(i32 %32)
  %34 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %35 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %11
  %39 = call i32 (i8*, i8*, ...) @atf_utils_grep_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %40 = call i32 @ATF_REQUIRE(i32 %39)
  %41 = call i32 @exists(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %42 = call i32 @ATF_REQUIRE(i32 %41)
  br label %54

43:                                               ; preds = %11
  %44 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %45 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i8*, ...) @atf_utils_grep_file(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = call i32 @ATF_REQUIRE(i32 %47)
  %49 = call i32 @exists(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @ATF_REQUIRE(i32 %52)
  br label %54

54:                                               ; preds = %43, %38
  %55 = call i32 @unlink(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, -1
  %57 = zext i1 %56 to i32
  %58 = call i32 @ATF_REQUIRE(i32 %57)
  %59 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %60 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = call i32 @unlink(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %65 = icmp ne i32 %64, -1
  %66 = zext i1 %65 to i32
  %67 = call i32 @ATF_REQUIRE(i32 %66)
  br label %68

68:                                               ; preds = %63, %54
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.require_eq_test*, %struct.require_eq_test** %3, align 8
  %71 = getelementptr inbounds %struct.require_eq_test, %struct.require_eq_test* %70, i32 1
  store %struct.require_eq_test* %71, %struct.require_eq_test** %3, align 8
  br label %6

72:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @init_and_run_h_tc(i8*, i32*, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @exists(i8*) #1

declare dso_local i32 @atf_utils_grep_file(i8*, i8*, ...) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
