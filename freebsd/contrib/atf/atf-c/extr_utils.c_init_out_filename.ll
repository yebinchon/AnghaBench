; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_init_out_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_init_out_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"atf_utils_fork_%d_%s.txt\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create output file: %s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i32)* @init_out_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_out_filename(i32* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @atf_dynstr_init_fmt(i32* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @atf_is_error(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %22 = call i32 @atf_error_format(i32 %20, i8* %21, i32 1024)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %27 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %31 = call i32 @err(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %4
  ret void
}

declare dso_local i32 @atf_dynstr_init_fmt(i32*, i8*, i32, i8*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_error_format(i32, i8*, i32) #1

declare dso_local i32 @atf_tc_fail(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
