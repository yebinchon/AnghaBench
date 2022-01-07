; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_file_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_file_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to check the existence of %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_utils_file_exists(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @F_OK, align 4
  %7 = call i32 @access(i8* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @ENOENT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* @errno, align 8
  %17 = call i32 @strerror(i64 %16)
  %18 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %17)
  br label %20

19:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %22

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %21, %20
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @atf_tc_fail(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
