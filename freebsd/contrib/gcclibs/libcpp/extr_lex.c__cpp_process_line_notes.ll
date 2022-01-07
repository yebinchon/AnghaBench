; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c__cpp_process_line_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c__cpp_process_line_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i8 }

@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"backslash and newline separated by space\00", align 1
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"backslash-newline at end of file\00", align 1
@_cpp_trigraph_map = common dso_local global i64* null, align 8
@warn_trigraphs = common dso_local global i32 0, align 4
@trigraphs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"trigraph ??%c converted to %c\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"trigraph ??%c ignored, use -trigraphs to enable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cpp_process_line_notes(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %5, align 8
  br label %11

11:                                               ; preds = %167, %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i64 %17
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %168

27:                                               ; preds = %11
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @CPP_BUF_COLUMN(%struct.TYPE_14__* %32, i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 8
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %49, label %43

43:                                               ; preds = %27
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i8, i8* %45, align 8
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %99

49:                                               ; preds = %43, %27
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 8
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = load i32, i32* @CPP_DL_WARNING, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.TYPE_13__*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.TYPE_13__* %59, i32 %60, i32 %65, i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %58, %55, %49
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (%struct.TYPE_13__*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.TYPE_13__* %77, i32 %78, i32 %83, i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %76, %68
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = call i32 @CPP_INCREMENT_LINE(%struct.TYPE_13__* %97, i32 0)
  br label %167

99:                                               ; preds = %43
  %100 = load i64*, i64** @_cpp_trigraph_map, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 8
  %104 = sext i8 %103 to i64
  %105 = getelementptr inbounds i64, i64* %100, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %164

108:                                              ; preds = %99
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = load i32, i32* @warn_trigraphs, align 4
  %111 = call i64 @CPP_OPTION(%struct.TYPE_13__* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %163

113:                                              ; preds = %108
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = call i64 @warn_in_comment(%struct.TYPE_13__* %117, %struct.TYPE_15__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %163

121:                                              ; preds = %116, %113
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = load i32, i32* @trigraphs, align 4
  %124 = call i64 @CPP_OPTION(%struct.TYPE_13__* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %148

126:                                              ; preds = %121
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = load i32, i32* @CPP_DL_WARNING, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i8, i8* %136, align 8
  %138 = sext i8 %137 to i32
  %139 = load i64*, i64** @_cpp_trigraph_map, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i8, i8* %141, align 8
  %143 = sext i8 %142 to i64
  %144 = getelementptr inbounds i64, i64* %139, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 (%struct.TYPE_13__*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.TYPE_13__* %127, i32 %128, i32 %133, i32 %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %146)
  br label %162

148:                                              ; preds = %121
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %150 = load i32, i32* @CPP_DL_WARNING, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i8, i8* %158, align 8
  %160 = sext i8 %159 to i32
  %161 = call i32 (%struct.TYPE_13__*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.TYPE_13__* %149, i32 %150, i32 %155, i32 %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %148, %126
  br label %163

163:                                              ; preds = %162, %116, %108
  br label %166

164:                                              ; preds = %99
  %165 = call i32 (...) @abort() #3
  unreachable

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166, %91
  br label %11

168:                                              ; preds = %26
  ret void
}

declare dso_local i32 @CPP_BUF_COLUMN(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @cpp_error_with_line(%struct.TYPE_13__*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @CPP_INCREMENT_LINE(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @CPP_OPTION(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @warn_in_comment(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
