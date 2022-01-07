; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_fail_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_fail_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, i32, i32, i32 }

@EXPECT_FAIL = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"*** Expected check failure: %s: %s\0A\00", align 1
@EXPECT_PASS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"*** Check failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Test case raised a failure but was not expecting one; reason was %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, i32*)* @fail_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_check(%struct.context* %0, i32* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.context*, %struct.context** %3, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EXPECT_FAIL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.context*, %struct.context** %3, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 3
  %14 = call i8* @atf_dynstr_cstring(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @atf_dynstr_cstring(i32* %15)
  %17 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %16)
  %18 = load %struct.context*, %struct.context** %3, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.context*, %struct.context** %3, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EXPECT_PASS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @atf_dynstr_cstring(i32* %30)
  %32 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load %struct.context*, %struct.context** %3, align 8
  %34 = getelementptr inbounds %struct.context, %struct.context* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %42

37:                                               ; preds = %22
  %38 = load %struct.context*, %struct.context** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @atf_dynstr_cstring(i32* %39)
  %41 = call i32 @error_in_expect(%struct.context* %38, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %28
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @atf_dynstr_fini(i32* %44)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @atf_dynstr_cstring(i32*) #1

declare dso_local i32 @error_in_expect(%struct.context*, i8*, i8*) #1

declare dso_local i32 @atf_dynstr_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
