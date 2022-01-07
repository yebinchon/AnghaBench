; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_setElementTypePrefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_setElementTypePrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@ASCII_COLON = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_10__*)* @setElementTypePrefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setElementTypePrefix(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %7, align 8
  br label %16

16:                                               ; preds = %86, %2
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %89

20:                                               ; preds = %16
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i8, i8* @ASCII_COLON, align 1
  %24 = call i64 @XML_T(i8 signext %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %9, align 8
  br label %30

30:                                               ; preds = %43, %26
  %31 = load i64*, i64** %9, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = icmp ne i64* %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @poolAppendChar(i32* %36, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %90

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %9, align 8
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = call i64 @XML_T(i8 signext 0)
  %50 = call i32 @poolAppendChar(i32* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %90

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = call i64 @poolStart(i32* %58)
  %60 = call i64 @lookup(%struct.TYPE_8__* %54, i32* %56, i64 %59, i32 8)
  %61 = inttoptr i64 %60 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %8, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %90

65:                                               ; preds = %53
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = call i64 @poolStart(i32* %70)
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = call i32 @poolFinish(i32* %75)
  br label %81

77:                                               ; preds = %65
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = call i32 @poolDiscard(i32* %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %84, align 8
  br label %85

85:                                               ; preds = %81, %20
  br label %86

86:                                               ; preds = %85
  %87 = load i64*, i64** %7, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %7, align 8
  br label %16

89:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %64, %52, %41
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @XML_T(i8 signext) #1

declare dso_local i32 @poolAppendChar(i32*, i64) #1

declare dso_local i64 @lookup(%struct.TYPE_8__*, i32*, i64, i32) #1

declare dso_local i64 @poolStart(i32*) #1

declare dso_local i32 @poolFinish(i32*) #1

declare dso_local i32 @poolDiscard(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
