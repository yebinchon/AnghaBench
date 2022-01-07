; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_dir.c_compare_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_dir.c_compare_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@locale_specific_sorting = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ignore_file_name_case = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"cannot compare file names `%s' and `%s'\00", align 1
@failed_locale_specific_sorting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_names(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* @locale_specific_sorting, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  store i64 0, i64* @errno, align 8
  %10 = load i64, i64* @ignore_file_name_case, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcasecoll(i8* %13, i8* %14)
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %9
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcoll(i8* %17, i8* %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i64, i64* @errno, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i64, i64* @errno, align 8
  %25 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @error(i32 0, i64 %24, i8* %25, i8* %26, i8* %27)
  %29 = load i32, i32* @failed_locale_specific_sorting, align 4
  %30 = call i32 @longjmp(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %2
  %34 = load i64, i64* @ignore_file_name_case, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcasecmp(i8* %37, i8* %38)
  br label %44

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @file_name_cmp(i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %39, %36 ], [ %43, %40 ]
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %31
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @strcasecoll(i8*, i8*) #1

declare dso_local i32 @strcoll(i8*, i8*) #1

declare dso_local i32 @error(i32, i64, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @file_name_cmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
