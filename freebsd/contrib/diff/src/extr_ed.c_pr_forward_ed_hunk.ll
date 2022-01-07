; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ed.c_pr_forward_ed_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ed.c_pr_forward_ed_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.change = type { i32 }

@outfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@change_letter = common dso_local global i32* null, align 8
@files = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.change*)* @pr_forward_ed_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_forward_ed_hunk(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.change* %0, %struct.change** %2, align 8
  %9 = load %struct.change*, %struct.change** %2, align 8
  %10 = call i32 @analyze_hunk(%struct.change* %9, i64* %4, i64* %5, i64* %6, i64* %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %53

14:                                               ; preds = %1
  %15 = call i32 (...) @begin_output()
  %16 = load i32, i32* @outfile, align 4
  %17 = load i32*, i32** @change_letter, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @print_number_range(i8 signext 32, %struct.TYPE_3__* %23, i64 %24, i64 %25)
  %27 = load i32, i32* @outfile, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @OLD, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %53

33:                                               ; preds = %14
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %47, %33
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @print_1_line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %35

50:                                               ; preds = %35
  %51 = load i32, i32* @outfile, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %32, %13
  ret void
}

declare dso_local i32 @analyze_hunk(%struct.change*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @begin_output(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_number_range(i8 signext, %struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @print_1_line(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
