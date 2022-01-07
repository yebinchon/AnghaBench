; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_validate_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_validate_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, i64, i64 }

@EXPECT_DEATH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"Test case was expected to terminate abruptly but it continued execution\00", align 1
@EXPECT_EXIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"Test case was expected to exit cleanly but it continued execution\00", align 1
@EXPECT_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Test case was expecting a failure but none were raised\00", align 1
@EXPECT_PASS = common dso_local global i64 0, align 8
@EXPECT_SIGNAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"Test case was expected to receive a termination signal but it continued execution\00", align 1
@EXPECT_TIMEOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"Test case was expected to hang but it continued execution\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @validate_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_expect(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @EXPECT_DEATH, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = call i32 @error_in_expect(%struct.context* %9, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EXPECT_EXIT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.context*, %struct.context** %2, align 8
  %19 = call i32 @error_in_expect(%struct.context* %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %79

20:                                               ; preds = %11
  %21 = load %struct.context*, %struct.context** %2, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EXPECT_FAIL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load %struct.context*, %struct.context** %2, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.context*, %struct.context** %2, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.context*, %struct.context** %2, align 8
  %36 = call i32 @error_in_expect(%struct.context* %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %47

37:                                               ; preds = %26
  %38 = load %struct.context*, %struct.context** %2, align 8
  %39 = getelementptr inbounds %struct.context, %struct.context* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.context*, %struct.context** %2, align 8
  %42 = getelementptr inbounds %struct.context, %struct.context* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @INV(i32 %45)
  br label %47

47:                                               ; preds = %37, %34
  br label %78

48:                                               ; preds = %20
  %49 = load %struct.context*, %struct.context** %2, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EXPECT_PASS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %77

55:                                               ; preds = %48
  %56 = load %struct.context*, %struct.context** %2, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @EXPECT_SIGNAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.context*, %struct.context** %2, align 8
  %63 = call i32 @error_in_expect(%struct.context* %62, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  br label %76

64:                                               ; preds = %55
  %65 = load %struct.context*, %struct.context** %2, align 8
  %66 = getelementptr inbounds %struct.context, %struct.context* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EXPECT_TIMEOUT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.context*, %struct.context** %2, align 8
  %72 = call i32 @error_in_expect(%struct.context* %71, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @UNREACHABLE, align 4
  br label %75

75:                                               ; preds = %73, %70
  br label %76

76:                                               ; preds = %75, %61
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %47
  br label %79

79:                                               ; preds = %78, %17
  br label %80

80:                                               ; preds = %79, %8
  ret void
}

declare dso_local i32 @error_in_expect(%struct.context*, i8*) #1

declare dso_local i32 @INV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
