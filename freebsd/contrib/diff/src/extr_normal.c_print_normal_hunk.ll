; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_normal.c_print_normal_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_normal.c_print_normal_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.change = type { i32 }

@files = common dso_local global %struct.TYPE_3__* null, align 8
@outfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@change_letter = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@CHANGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@NEW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.change*)* @print_normal_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_normal_hunk(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.change* %0, %struct.change** %2, align 8
  %9 = load %struct.change*, %struct.change** %2, align 8
  %10 = call i32 @analyze_hunk(%struct.change* %9, i64* %3, i64* %4, i64* %5, i64* %6)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %87

14:                                               ; preds = %1
  %15 = call i32 (...) @begin_output()
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 0
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @print_number_range(i8 signext 44, %struct.TYPE_3__* %17, i64 %18, i64 %19)
  %21 = load i32, i32* @outfile, align 4
  %22 = load i32*, i32** @change_letter, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 1
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @print_number_range(i8 signext 44, %struct.TYPE_3__* %29, i64 %30, i64 %31)
  %33 = load i32, i32* @outfile, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @OLD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %14
  %40 = load i64, i64* %3, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %53, %39
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @print_1_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %41

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %14
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CHANGED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @outfile, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @NEW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load i64, i64* %5, align 8
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %83, %69
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ule i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = call i32 @print_1_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %71

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %13, %86, %64
  ret void
}

declare dso_local i32 @analyze_hunk(%struct.change*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @begin_output(...) #1

declare dso_local i32 @print_number_range(i8 signext, %struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_1_line(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
