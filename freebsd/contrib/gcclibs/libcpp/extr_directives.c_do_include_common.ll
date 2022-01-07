; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_include_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_include_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, i32, i32, i8*, i32, i32**)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@discard_comments = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"empty filename in #%s\00", align 1
@CPP_STACK_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"#include nested too deeply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @do_include_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_include_common(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32** null, i32*** %7, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = load i32, i32* @discard_comments, align 4
  %10 = call i32 @CPP_OPTION(%struct.TYPE_17__* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = call i8* @parse_include(%struct.TYPE_17__* %17, i32* %6, i32*** %7)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load i32**, i32*** %7, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32**, i32*** %7, align 8
  %26 = bitcast i32** %25 to i8*
  %27 = call i32 @XDELETEVEC(i8* %26)
  br label %28

28:                                               ; preds = %24, %21
  br label %104

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = load i32, i32* @CPP_DL_ERROR, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @cpp_error(%struct.TYPE_17__* %34, i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @XDELETEVEC(i8* %42)
  %44 = load i32**, i32*** %7, align 8
  %45 = icmp ne i32** %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32**, i32*** %7, align 8
  %48 = bitcast i32** %47 to i8*
  %49 = call i32 @XDELETEVEC(i8* %48)
  br label %50

50:                                               ; preds = %46, %33
  br label %104

51:                                               ; preds = %29
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CPP_STACK_MAX, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = load i32, i32* @CPP_DL_ERROR, align 4
  %62 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @cpp_error(%struct.TYPE_17__* %60, i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %95

63:                                               ; preds = %51
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = call i32 @skip_rest_of_line(%struct.TYPE_17__* %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_17__*, i32, i32, i8*, i32, i32**)*, i32 (%struct.TYPE_17__*, i32, i32, i8*, i32, i32**)** %68, align 8
  %70 = icmp ne i32 (%struct.TYPE_17__*, i32, i32, i8*, i32, i32**)* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_17__*, i32, i32, i8*, i32, i32**)*, i32 (%struct.TYPE_17__*, i32, i32, i8*, i32, i32**)** %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32**, i32*** %7, align 8
  %88 = call i32 %75(%struct.TYPE_17__* %76, i32 %79, i32 %84, i8* %85, i32 %86, i32** %87)
  br label %89

89:                                               ; preds = %71, %63
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @_cpp_stack_include(%struct.TYPE_17__* %90, i8* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %59
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @XDELETEVEC(i8* %96)
  %98 = load i32**, i32*** %7, align 8
  %99 = icmp ne i32** %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32**, i32*** %7, align 8
  %102 = bitcast i32** %101 to i8*
  %103 = call i32 @XDELETEVEC(i8* %102)
  br label %104

104:                                              ; preds = %28, %50, %100, %95
  ret void
}

declare dso_local i32 @CPP_OPTION(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @parse_include(%struct.TYPE_17__*, i32*, i32***) #1

declare dso_local i32 @XDELETEVEC(i8*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @skip_rest_of_line(%struct.TYPE_17__*) #1

declare dso_local i32 @_cpp_stack_include(%struct.TYPE_17__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
