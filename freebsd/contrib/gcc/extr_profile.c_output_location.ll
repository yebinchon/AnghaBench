; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_profile.c_output_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_profile.c_output_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_location.prev_file_name = internal global i8* null, align 8
@output_location.prev_line = internal global i32 0, align 4
@GCOV_TAG_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64*, i32)* @output_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_location(i8* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i8* null, i8** @output_location.prev_file_name, align 8
  store i32 -1, i32* @output_location.prev_line, align 4
  br label %61

14:                                               ; preds = %4
  %15 = load i8*, i8** @output_location.prev_file_name, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** @output_location.prev_file_name, align 8
  %20 = call i64 @strcmp(i8* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ true, %14 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @output_location.prev_line, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %31, %22
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @GCOV_TAG_LINES, align 4
  %40 = call i64 @gcov_write_tag(i32 %39)
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @BB_TO_GCOV_INDEX(i32 %42)
  %44 = call i32 @gcov_write_unsigned(i32 %43)
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  store i8* %49, i8** @output_location.prev_file_name, align 8
  %50 = call i32 @gcov_write_unsigned(i32 0)
  %51 = load i8*, i8** @output_location.prev_file_name, align 8
  %52 = call i32 @gcov_write_string(i8* %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @gcov_write_unsigned(i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* @output_location.prev_line, align 4
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %13, %60, %31
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @gcov_write_tag(i32) #1

declare dso_local i32 @gcov_write_unsigned(i32) #1

declare dso_local i32 @BB_TO_GCOV_INDEX(i32) #1

declare dso_local i32 @gcov_write_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
