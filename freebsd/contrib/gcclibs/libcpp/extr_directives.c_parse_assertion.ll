; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_parse_assertion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_parse_assertion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.answer = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CPP_EOF = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"assertion without predicate\00", align 1
@CPP_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"predicate must be an identifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, %struct.answer**, i32)* @parse_assertion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_assertion(%struct.TYPE_14__* %0, %struct.answer** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.answer**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.answer** %1, %struct.answer*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.answer**, %struct.answer*** %5, align 8
  store %struct.answer* null, %struct.answer** %16, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = call %struct.TYPE_13__* @cpp_get_token(%struct.TYPE_14__* %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %8, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CPP_EOF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = load i32, i32* @CPP_DL_ERROR, align 4
  %27 = call i32 @cpp_error(%struct.TYPE_14__* %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %72

28:                                               ; preds = %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CPP_NAME, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = load i32, i32* @CPP_DL_ERROR, align 4
  %37 = call i32 @cpp_error(%struct.TYPE_14__* %35, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %71

38:                                               ; preds = %28
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = load %struct.answer**, %struct.answer*** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @parse_answer(%struct.TYPE_14__* %39, %struct.answer** %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @NODE_LEN(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  %52 = call i64 @alloca(i32 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 35, i8* %55, align 1
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @NODE_NAME(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @memcpy(i8* %57, i32 %62, i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  %69 = call i32* @cpp_lookup(%struct.TYPE_14__* %65, i8* %66, i32 %68)
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %44, %38
  br label %71

71:                                               ; preds = %70, %34
  br label %72

72:                                               ; preds = %71, %24
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  %78 = load i32*, i32** %7, align 8
  ret i32* %78
}

declare dso_local %struct.TYPE_13__* @cpp_get_token(%struct.TYPE_14__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i64 @parse_answer(%struct.TYPE_14__*, %struct.answer**, i32) #1

declare dso_local i32 @NODE_LEN(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @NODE_NAME(i32) #1

declare dso_local i32* @cpp_lookup(%struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
