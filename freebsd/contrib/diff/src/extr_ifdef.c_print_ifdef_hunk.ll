; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_print_ifdef_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_print_ifdef_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change = type { i32 }

@next_line0 = common dso_local global i64 0, align 8
@next_line1 = common dso_local global i64 0, align 8
@group_format = common dso_local global i32* null, align 8
@UNCHANGED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.change*)* @print_ifdef_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ifdef_hunk(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.change* %0, %struct.change** %2, align 8
  %8 = load %struct.change*, %struct.change** %2, align 8
  %9 = call i32 @analyze_hunk(%struct.change* %8, i64* %3, i64* %4, i64* %5, i64* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = call i32 (...) @begin_output()
  %15 = load i64, i64* @next_line0, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* @next_line1, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18, %13
  %23 = load i32*, i32** @group_format, align 8
  %24 = load i64, i64* @UNCHANGED, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @next_line0, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @next_line1, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @format_ifdef(i32 %26, i64 %27, i64 %28, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %22, %18
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @next_line0, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @next_line1, align 8
  %37 = load i32*, i32** @group_format, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @next_line0, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @next_line1, align 8
  %46 = call i32 @format_ifdef(i32 %41, i64 %42, i64 %43, i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %32, %12
  ret void
}

declare dso_local i32 @analyze_hunk(%struct.change*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @begin_output(...) #1

declare dso_local i32 @format_ifdef(i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
