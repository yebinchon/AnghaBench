; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_fail_requirement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_fail_requirement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, i32 }

@EXPECT_FAIL = common dso_local global i64 0, align 8
@EXPECT_PASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Test case raised a failure but was not expecting one; reason was %s\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, i32*)* @fail_requirement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_requirement(%struct.context* %0, i32* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.context*, %struct.context** %3, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EXPECT_FAIL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.context*, %struct.context** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @expected_failure(%struct.context* %11, i32* %12)
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.context*, %struct.context** %3, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EXPECT_PASS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.context*, %struct.context** %3, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @create_resfile(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1, i32* %24)
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable

28:                                               ; preds = %14
  %29 = load %struct.context*, %struct.context** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @atf_dynstr_cstring(i32* %30)
  %32 = call i32 @error_in_expect(%struct.context* %29, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i32, i32* @UNREACHABLE, align 4
  ret void
}

declare dso_local i32 @expected_failure(%struct.context*, i32*) #1

declare dso_local i32 @create_resfile(i32, i8*, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @error_in_expect(%struct.context*, i8*, i32) #1

declare dso_local i32 @atf_dynstr_cstring(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
