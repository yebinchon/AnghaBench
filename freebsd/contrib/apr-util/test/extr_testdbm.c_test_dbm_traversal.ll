; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdbm.c_test_dbm_traversal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdbm.c_test_dbm_traversal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32* }

@APR_SUCCESS = common dso_local global i32 0, align 4
@NUM_TABLE_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_8__*)* @test_dbm_traversal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dbm_traversal(i32* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @apr_dbm_firstkey(i32* %10, %struct.TYPE_9__* %9)
  store i64 %11, i64* %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @APR_SUCCESS, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @ABTS_INT_EQUAL(i32* %12, i32 %13, i64 %14)
  br label %16

16:                                               ; preds = %91, %3
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  br label %92

25:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %81, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NUM_TABLE_ROWS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %81

42:                                               ; preds = %30
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @memcmp(i32 %49, i32* %51, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %81

57:                                               ; preds = %42
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ABTS_INT_EQUAL(i32* %58, i32 0, i64 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ABTS_INT_EQUAL(i32* %66, i32 0, i64 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %57, %56, %41
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %26

84:                                               ; preds = %26
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @apr_dbm_nextkey(i32* %85, %struct.TYPE_9__* %9)
  store i64 %86, i64* %7, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @APR_SUCCESS, align 4
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @ABTS_INT_EQUAL(i32* %87, i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %84
  br i1 true, label %16, label %92

92:                                               ; preds = %91, %24
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %120, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @NUM_TABLE_ROWS, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %120

106:                                              ; preds = %97
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @ABTS_INT_EQUAL(i32* %107, i32 1, i64 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %106, %105
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %93

123:                                              ; preds = %93
  ret void
}

declare dso_local i64 @apr_dbm_firstkey(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ABTS_INT_EQUAL(i32*, i32, i64) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

declare dso_local i64 @apr_dbm_nextkey(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
