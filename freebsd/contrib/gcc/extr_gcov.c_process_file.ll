; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_process_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_process_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@functions = common dso_local global %struct.TYPE_14__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s:no functions found\0A\00", align 1
@bbg_file_name = common dso_local global i32 0, align 4
@sources = common dso_local global %struct.TYPE_13__* null, align 8
@line_t = common dso_local global i32 0, align 4
@flag_function_summary = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@flag_gcov_file = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s:creating '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s:error writing output file '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s:could not open output file '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @create_file_names(i8* %8)
  %10 = call i64 (...) @read_graph_file()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %146

13:                                               ; preds = %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @functions, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @bbg_file_name, align 4
  %19 = call i32 (i32, i8*, ...) @fnotice(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %146

20:                                               ; preds = %13
  %21 = call i64 (...) @read_count_file()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %146

24:                                               ; preds = %20
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** @functions, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %4, align 8
  br label %26

26:                                               ; preds = %32, %24
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = call i32 @solve_flow_graph(%struct.TYPE_14__* %30)
  br label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %4, align 8
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sources, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %3, align 8
  br label %38

38:                                               ; preds = %49, %36
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* @line_t, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @XCNEWVEC(i32 %42, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %3, align 8
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** @functions, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %4, align 8
  br label %55

55:                                               ; preds = %79, %53
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = icmp ne %struct.TYPE_14__* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = call i32 @memset(%struct.TYPE_15__* %5, i32 0, i32 4)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i64, i64* @flag_function_summary, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %66
  %69 = phi %struct.TYPE_15__* [ %5, %66 ], [ null, %67 ]
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = call i32 @add_line_counts(%struct.TYPE_15__* %69, %struct.TYPE_14__* %70)
  %72 = load i64, i64* @flag_function_summary, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = call i32 @function_summary(%struct.TYPE_15__* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @stdout, align 4
  %77 = call i32 (i32, i8*, ...) @fnotice(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  store %struct.TYPE_14__* %82, %struct.TYPE_14__** %4, align 8
  br label %55

83:                                               ; preds = %55
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sources, align 8
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %3, align 8
  br label %85

85:                                               ; preds = %142, %83
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = icmp ne %struct.TYPE_13__* %86, null
  br i1 %87, label %88, label %146

88:                                               ; preds = %85
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = call i32 @accumulate_line_counts(%struct.TYPE_13__* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = call i32 @function_summary(%struct.TYPE_15__* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i64, i64* @flag_gcov_file, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %139

96:                                               ; preds = %88
  %97 = load i8*, i8** %2, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @make_gcov_file_name(i8* %97, i32 %100)
  store i8* %101, i8** %6, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call i32* @fopen(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %103, i32** %7, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %129

106:                                              ; preds = %96
  %107 = load i32, i32* @stdout, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 (i32, i8*, ...) @fnotice(i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %110, i8* %111)
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = call i32 @output_lines(i32* %113, %struct.TYPE_13__* %114)
  %116 = load i32*, i32** %7, align 8
  %117 = call i64 @ferror(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %106
  %120 = load i32, i32* @stderr, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 (i32, i8*, ...) @fnotice(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %119, %106
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @fclose(i32* %127)
  br label %136

129:                                              ; preds = %96
  %130 = load i32, i32* @stderr, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 (i32, i8*, ...) @fnotice(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %133, i8* %134)
  br label %136

136:                                              ; preds = %129, %126
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @free(i8* %137)
  br label %139

139:                                              ; preds = %136, %88
  %140 = load i32, i32* @stdout, align 4
  %141 = call i32 (i32, i8*, ...) @fnotice(i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  store %struct.TYPE_13__* %145, %struct.TYPE_13__** %3, align 8
  br label %85

146:                                              ; preds = %12, %16, %23, %85
  ret void
}

declare dso_local i32 @create_file_names(i8*) #1

declare dso_local i64 @read_graph_file(...) #1

declare dso_local i32 @fnotice(i32, i8*, ...) #1

declare dso_local i64 @read_count_file(...) #1

declare dso_local i32 @solve_flow_graph(%struct.TYPE_14__*) #1

declare dso_local i32 @XCNEWVEC(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @add_line_counts(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @function_summary(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @accumulate_line_counts(%struct.TYPE_13__*) #1

declare dso_local i8* @make_gcov_file_name(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @output_lines(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
