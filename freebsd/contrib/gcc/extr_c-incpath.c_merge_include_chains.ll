; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-incpath.c_merge_include_chains.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-incpath.c_merge_include_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_dir = type { i8*, %struct.cpp_dir* }
%struct.TYPE_2__ = type { %struct.cpp_dir* }

@heads = common dso_local global %struct.cpp_dir** null, align 8
@SYSTEM = common dso_local global i64 0, align 8
@AFTER = common dso_local global i64 0, align 8
@tails = common dso_local global %struct.TYPE_2__** null, align 8
@BRACKET = common dso_local global i64 0, align 8
@QUOTE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"#include \22...\22 search starts here:\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"#include <...> search starts here:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"End of search list.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @merge_include_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_include_chains(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpp_dir*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %7 = load i64, i64* @SYSTEM, align 8
  %8 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %6, i64 %7
  %9 = load %struct.cpp_dir*, %struct.cpp_dir** %8, align 8
  %10 = icmp ne %struct.cpp_dir* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %13 = load i64, i64* @AFTER, align 8
  %14 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %12, i64 %13
  %15 = load %struct.cpp_dir*, %struct.cpp_dir** %14, align 8
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @tails, align 8
  %17 = load i64, i64* @SYSTEM, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.cpp_dir* %15, %struct.cpp_dir** %20, align 8
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %23 = load i64, i64* @AFTER, align 8
  %24 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %22, i64 %23
  %25 = load %struct.cpp_dir*, %struct.cpp_dir** %24, align 8
  %26 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %27 = load i64, i64* @SYSTEM, align 8
  %28 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %26, i64 %27
  store %struct.cpp_dir* %25, %struct.cpp_dir** %28, align 8
  br label %29

29:                                               ; preds = %21, %11
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %32 = load i64, i64* @SYSTEM, align 8
  %33 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %31, i64 %32
  %34 = load %struct.cpp_dir*, %struct.cpp_dir** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call %struct.cpp_dir* @remove_duplicates(i32* %30, %struct.cpp_dir* %34, %struct.cpp_dir* null, %struct.cpp_dir* null, i32 %35)
  %37 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %38 = load i64, i64* @SYSTEM, align 8
  %39 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %37, i64 %38
  store %struct.cpp_dir* %36, %struct.cpp_dir** %39, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %42 = load i64, i64* @BRACKET, align 8
  %43 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %41, i64 %42
  %44 = load %struct.cpp_dir*, %struct.cpp_dir** %43, align 8
  %45 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %46 = load i64, i64* @SYSTEM, align 8
  %47 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %45, i64 %46
  %48 = load %struct.cpp_dir*, %struct.cpp_dir** %47, align 8
  %49 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %50 = load i64, i64* @SYSTEM, align 8
  %51 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %49, i64 %50
  %52 = load %struct.cpp_dir*, %struct.cpp_dir** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.cpp_dir* @remove_duplicates(i32* %40, %struct.cpp_dir* %44, %struct.cpp_dir* %48, %struct.cpp_dir* %52, i32 %53)
  %55 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %56 = load i64, i64* @BRACKET, align 8
  %57 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %55, i64 %56
  store %struct.cpp_dir* %54, %struct.cpp_dir** %57, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %60 = load i64, i64* @QUOTE, align 8
  %61 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %59, i64 %60
  %62 = load %struct.cpp_dir*, %struct.cpp_dir** %61, align 8
  %63 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %64 = load i64, i64* @SYSTEM, align 8
  %65 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %63, i64 %64
  %66 = load %struct.cpp_dir*, %struct.cpp_dir** %65, align 8
  %67 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %68 = load i64, i64* @BRACKET, align 8
  %69 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %67, i64 %68
  %70 = load %struct.cpp_dir*, %struct.cpp_dir** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call %struct.cpp_dir* @remove_duplicates(i32* %58, %struct.cpp_dir* %62, %struct.cpp_dir* %66, %struct.cpp_dir* %70, i32 %71)
  %73 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %74 = load i64, i64* @QUOTE, align 8
  %75 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %73, i64 %74
  store %struct.cpp_dir* %72, %struct.cpp_dir** %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %29
  %79 = load i32, i32* @stderr, align 4
  %80 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %83 = load i64, i64* @QUOTE, align 8
  %84 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %82, i64 %83
  %85 = load %struct.cpp_dir*, %struct.cpp_dir** %84, align 8
  store %struct.cpp_dir* %85, %struct.cpp_dir** %5, align 8
  br label %86

86:                                               ; preds = %107, %78
  %87 = load %struct.cpp_dir*, %struct.cpp_dir** %5, align 8
  %88 = load %struct.cpp_dir**, %struct.cpp_dir*** @heads, align 8
  %89 = load i64, i64* @BRACKET, align 8
  %90 = getelementptr inbounds %struct.cpp_dir*, %struct.cpp_dir** %88, i64 %89
  %91 = load %struct.cpp_dir*, %struct.cpp_dir** %90, align 8
  %92 = icmp eq %struct.cpp_dir* %87, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @stderr, align 4
  %95 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %96 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.cpp_dir*, %struct.cpp_dir** %5, align 8
  %99 = icmp ne %struct.cpp_dir* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %111

101:                                              ; preds = %97
  %102 = load i32, i32* @stderr, align 4
  %103 = load %struct.cpp_dir*, %struct.cpp_dir** %5, align 8
  %104 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %101
  %108 = load %struct.cpp_dir*, %struct.cpp_dir** %5, align 8
  %109 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %108, i32 0, i32 1
  %110 = load %struct.cpp_dir*, %struct.cpp_dir** %109, align 8
  store %struct.cpp_dir* %110, %struct.cpp_dir** %5, align 8
  br label %86

111:                                              ; preds = %100
  %112 = load i32, i32* @stderr, align 4
  %113 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %114 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %111, %29
  ret void
}

declare dso_local %struct.cpp_dir* @remove_duplicates(i32*, %struct.cpp_dir*, %struct.cpp_dir*, %struct.cpp_dir*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
