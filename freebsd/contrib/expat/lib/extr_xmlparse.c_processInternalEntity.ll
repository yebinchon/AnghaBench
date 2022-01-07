; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_processInternalEntity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_processInternalEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32*, i32*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64 }

@XML_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@XML_TRUE = common dso_local global i32 0, align 4
@XML_FALSE = common dso_local global i32 0, align 4
@XML_ERROR_NONE = common dso_local global i32 0, align 4
@XML_SUSPENDED = common dso_local global i64 0, align 8
@internalEntityProcessor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_13__*, i32)* @processInternalEntity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processInternalEntity(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %12, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %25, align 8
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = call i64 @MALLOC(%struct.TYPE_11__* %27, i32 40)
  %29 = inttoptr i64 %28 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %12, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @XML_ERROR_NO_MEMORY, align 4
  store i32 %33, i32* %4, align 4
  br label %134

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i32, i32* @XML_TRUE, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %8, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %8, align 8
  store i8* %76, i8** %10, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* @XML_FALSE, align 4
  %87 = call i32 @doContent(%struct.TYPE_11__* %77, i32 %80, i32 %83, i8* %84, i8* %85, i8** %10, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @XML_ERROR_NONE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %132

91:                                               ; preds = %35
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @XML_SUSPENDED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @internalEntityProcessor, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %131

114:                                              ; preds = %95, %91
  %115 = load i32, i32* @XML_FALSE, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store %struct.TYPE_12__* %120, %struct.TYPE_12__** %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %130, align 8
  br label %131

131:                                              ; preds = %114, %102
  br label %132

132:                                              ; preds = %131, %35
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %32
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @MALLOC(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @doContent(%struct.TYPE_11__*, i32, i32, i8*, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
