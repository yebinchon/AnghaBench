; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_errors.c_print_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_errors.c_print_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.line_map = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@show_column = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s:%u:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s:%u:%u:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i32)* @print_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_location(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line_map*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** @progname, align 8
  %14 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %72

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call %struct.line_map* @linemap_lookup(i32 %18, i64 %19)
  store %struct.line_map* %20, %struct.line_map** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.line_map*, %struct.line_map** %7, align 8
  %25 = call i32 @linemap_print_containing_files(i32 %23, %struct.line_map* %24)
  %26 = load %struct.line_map*, %struct.line_map** %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @SOURCE_LINE(%struct.line_map* %26, i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %15
  %32 = load %struct.line_map*, %struct.line_map** %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @SOURCE_COLUMN(%struct.line_map* %32, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %31
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.line_map*, %struct.line_map** %7, align 8
  %45 = getelementptr inbounds %struct.line_map, %struct.line_map* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %69

48:                                               ; preds = %39
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = load i32, i32* @show_column, align 4
  %51 = call i64 @CPP_OPTION(%struct.TYPE_4__* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = load %struct.line_map*, %struct.line_map** %7, align 8
  %56 = getelementptr inbounds %struct.line_map, %struct.line_map* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 %58)
  br label %68

60:                                               ; preds = %48
  %61 = load i32, i32* @stderr, align 4
  %62 = load %struct.line_map*, %struct.line_map** %7, align 8
  %63 = getelementptr inbounds %struct.line_map, %struct.line_map* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %53
  br label %69

69:                                               ; preds = %68, %42
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fputc(i8 signext 32, i32 %70)
  br label %72

72:                                               ; preds = %69, %11
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local %struct.line_map* @linemap_lookup(i32, i64) #1

declare dso_local i32 @linemap_print_containing_files(i32, %struct.line_map*) #1

declare dso_local i32 @SOURCE_LINE(%struct.line_map*, i64) #1

declare dso_local i32 @SOURCE_COLUMN(%struct.line_map*, i64) #1

declare dso_local i64 @CPP_OPTION(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
