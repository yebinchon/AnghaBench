; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_build_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_build_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_10__*, i32, i32 }

@XML_CTYPE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, %struct.TYPE_10__*, %struct.TYPE_10__**, i32**)* @build_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_node(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_10__* %2, %struct.TYPE_10__** %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @XML_CTYPE_NAME, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %5
  %44 = load i32**, i32*** %10, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %12, align 8
  br label %56

56:                                               ; preds = %66, %43
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32**, i32*** %10, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %59, align 8
  store i32 %58, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  br label %69

66:                                               ; preds = %56
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %12, align 8
  br label %56

69:                                               ; preds = %65
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %73, align 8
  br label %135

74:                                               ; preds = %5
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = zext i32 %91 to i64
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %94
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %92, align 8
  store i32 0, i32* %13, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %121, %74
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %104
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %120 = load i32**, i32*** %10, align 8
  call void @build_node(%struct.TYPE_9__* %111, i32 %112, %struct.TYPE_10__* %118, %struct.TYPE_10__** %119, i32** %120)
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %13, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %13, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %14, align 4
  br label %104

132:                                              ; preds = %104
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %132, %69
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
