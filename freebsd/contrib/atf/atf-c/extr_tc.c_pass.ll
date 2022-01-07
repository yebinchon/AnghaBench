; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, i32 }

@EXPECT_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Test case was expecting a failure but got a pass instead\00", align 1
@EXPECT_PASS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"Test case asked to explicitly pass but was not expecting such condition\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @EXPECT_FAIL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = call i32 @error_in_expect(%struct.context* %9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EXPECT_PASS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.context*, %struct.context** %2, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @create_resfile(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32* null)
  %22 = load i32, i32* @EXIT_SUCCESS, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %11
  %25 = load %struct.context*, %struct.context** %2, align 8
  %26 = call i32 @error_in_expect(%struct.context* %25, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %8
  %29 = load i32, i32* @UNREACHABLE, align 4
  ret void
}

declare dso_local i32 @error_in_expect(%struct.context*, i8*) #1

declare dso_local i32 @create_resfile(i32, i8*, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
