; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyGenLeaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyGenLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i64*, %struct.TYPE_10__**, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@.str = private unnamed_addr constant [57 x i8] c"malloc error in ox yacc semantic stack space allocation\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"malloc error in ox node space allocation\0A\00", align 1
@yyyLambdaSSAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"malloc error in ox reference count list space allocation\0A\00", align 1
@yyyLRCIL = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyyGenLeaf(i32 %0, i32 %1, i64 %2, i64 %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_9__**, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %10, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.TYPE_9__** %15, %struct.TYPE_9__*** %12, align 8
  %16 = call i64 @malloc(i64 16)
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %18, align 8
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp eq %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = call i32 @yyyfatal(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %5
  %25 = call i64 @malloc(i64 56)
  %26 = inttoptr i64 %25 to %struct.TYPE_10__*
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %29, align 8
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = icmp eq %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 @yyyfatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i32, i32* @yyyLambdaSSAL, align 4
  %39 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  store %struct.TYPE_10__** null, %struct.TYPE_10__*** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = call i64 @calloc(i64 %72, i64 8)
  %74 = inttoptr i64 %73 to i64*
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  store i64* %74, i64** %79, align 8
  store i64* %74, i64** %11, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = icmp eq i64* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %37
  %83 = call i32 @yyyfatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %37
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i64*, i64** %11, align 8
  %91 = load i64*, i64** @yyyLRCIL, align 8
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %8, align 8
  %94 = getelementptr inbounds i64, i64* %91, i64 %92
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %90, i64 %95
  store i64 0, i64* %96, align 8
  br label %85

97:                                               ; preds = %85
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @yyyfatal(i8*) #1

declare dso_local i64 @calloc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
