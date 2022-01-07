; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_main.c_open_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_main.c_open_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_file = common dso_local global i64 0, align 8
@input_file_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"action_file\00", align 1
@action_file = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"text_file\00", align 1
@text_file = common dso_local global i8* null, align 8
@vflag = common dso_local global i64 0, align 8
@verbose_file_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@verbose_file = common dso_local global i64 0, align 8
@gflag = common dso_local global i64 0, align 8
@graph_file_name = common dso_local global i32 0, align 4
@graph_file = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"digraph %s {\0A\00", align 1
@file_prefix = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"\09edge [fontsize=10];\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\09node [shape=box,fontsize=10];\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"\09orientation=landscape;\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\09rankdir=LR;\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\09/*\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"\09margin=0.2;\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\09page=\228.27,11.69\22; // for A4 printing\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\09ratio=auto;\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\09*/\0A\00", align 1
@dflag = common dso_local global i64 0, align 8
@defines_file_name = common dso_local global i32 0, align 4
@defines_file = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"union_file\00", align 1
@union_file = common dso_local global i8* null, align 8
@iflag = common dso_local global i64 0, align 8
@externs_file_name = common dso_local global i32 0, align 4
@externs_file = common dso_local global i64 0, align 8
@output_file_name = common dso_local global i32 0, align 4
@output_file = common dso_local global i64 0, align 8
@rflag = common dso_local global i64 0, align 8
@code_file_name = common dso_local global i32 0, align 4
@code_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @open_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_files() #0 {
  %1 = call i32 (...) @create_file_names()
  %2 = load i64, i64* @input_file, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i32, i32* @input_file_name, align 4
  %6 = call i64 @fopen(i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* @input_file, align 8
  %7 = load i64, i64* @input_file, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* @input_file_name, align 4
  %11 = call i32 @open_error(i32 %10)
  br label %12

12:                                               ; preds = %9, %4
  br label %13

13:                                               ; preds = %12, %0
  %14 = call i8* @open_tmpfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** @action_file, align 8
  %15 = call i8* @open_tmpfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %15, i8** @text_file, align 8
  %16 = load i64, i64* @vflag, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32, i32* @verbose_file_name, align 4
  %20 = call i64 @fopen(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %20, i64* @verbose_file, align 8
  %21 = load i64, i64* @verbose_file, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @verbose_file_name, align 4
  %25 = call i32 @open_error(i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i64, i64* @gflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load i32, i32* @graph_file_name, align 4
  %32 = call i64 @fopen(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %32, i64* @graph_file, align 8
  %33 = load i64, i64* @graph_file, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @graph_file_name, align 4
  %37 = call i32 @open_error(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i64, i64* @graph_file, align 8
  %40 = load i8*, i8** @file_prefix, align 8
  %41 = call i32 (i64, i8*, ...) @fprintf(i64 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load i64, i64* @graph_file, align 8
  %43 = call i32 (i64, i8*, ...) @fprintf(i64 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i64, i64* @graph_file, align 8
  %45 = call i32 (i64, i8*, ...) @fprintf(i64 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i64, i64* @graph_file, align 8
  %47 = call i32 (i64, i8*, ...) @fprintf(i64 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %48 = load i64, i64* @graph_file, align 8
  %49 = call i32 (i64, i8*, ...) @fprintf(i64 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %50 = load i64, i64* @graph_file, align 8
  %51 = call i32 (i64, i8*, ...) @fprintf(i64 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %52 = load i64, i64* @graph_file, align 8
  %53 = call i32 (i64, i8*, ...) @fprintf(i64 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %54 = load i64, i64* @graph_file, align 8
  %55 = call i32 (i64, i8*, ...) @fprintf(i64 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %56 = load i64, i64* @graph_file, align 8
  %57 = call i32 (i64, i8*, ...) @fprintf(i64 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %58 = load i64, i64* @graph_file, align 8
  %59 = call i32 (i64, i8*, ...) @fprintf(i64 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %60

60:                                               ; preds = %38, %27
  %61 = load i64, i64* @dflag, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* @defines_file_name, align 4
  %65 = call i64 @fopen(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %65, i64* @defines_file, align 8
  %66 = load i64, i64* @defines_file, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @defines_file_name, align 4
  %70 = call i32 @open_error(i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = call i8* @open_tmpfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store i8* %72, i8** @union_file, align 8
  br label %73

73:                                               ; preds = %71, %60
  %74 = load i64, i64* @iflag, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* @externs_file_name, align 4
  %78 = call i64 @fopen(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %78, i64* @externs_file, align 8
  %79 = load i64, i64* @externs_file, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @externs_file_name, align 4
  %83 = call i32 @open_error(i32 %82)
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %73
  %86 = load i32, i32* @output_file_name, align 4
  %87 = call i64 @fopen(i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %87, i64* @output_file, align 8
  %88 = load i64, i64* @output_file, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @output_file_name, align 4
  %92 = call i32 @open_error(i32 %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i64, i64* @rflag, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* @code_file_name, align 4
  %98 = call i64 @fopen(i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %98, i64* @code_file, align 8
  %99 = load i64, i64* @code_file, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @code_file_name, align 4
  %103 = call i32 @open_error(i32 %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %107

105:                                              ; preds = %93
  %106 = load i64, i64* @output_file, align 8
  store i64 %106, i64* @code_file, align 8
  br label %107

107:                                              ; preds = %105, %104
  ret void
}

declare dso_local i32 @create_file_names(...) #1

declare dso_local i64 @fopen(i32, i8*) #1

declare dso_local i32 @open_error(i32) #1

declare dso_local i8* @open_tmpfile(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
