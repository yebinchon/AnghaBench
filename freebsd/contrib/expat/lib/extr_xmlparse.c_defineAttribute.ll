; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_defineAttribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_defineAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@XML_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_9__*, i64, i64, i32*, i32)* @defineAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defineAttribute(%struct.TYPE_7__* %0, %struct.TYPE_9__* %1, i64 %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %20, %6
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %15, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp eq %struct.TYPE_9__* %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %154

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %62, align 8
  br label %63

63:                                               ; preds = %59, %54, %49, %46
  br label %64

64:                                               ; preds = %63, %20
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %125

72:                                               ; preds = %64
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %72
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 8, i32* %79, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 24
  %86 = trunc i64 %85 to i32
  %87 = call i64 @MALLOC(i32 %80, i32 %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_8__*
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %77
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  store i32 0, i32* %7, align 4
  br label %154

98:                                               ; preds = %77
  br label %124

99:                                               ; preds = %72
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 2
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 24
  %111 = trunc i64 %110 to i32
  %112 = call i64 @REALLOC(i32 %104, %struct.TYPE_8__* %107, i32 %111)
  %113 = inttoptr i64 %112 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %16, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %115 = icmp eq %struct.TYPE_8__* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  store i32 0, i32* %7, align 4
  br label %154

117:                                              ; preds = %99
  %118 = load i32, i32* %17, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %123, align 8
  br label %124

124:                                              ; preds = %117, %98
  br label %125

125:                                              ; preds = %124, %64
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %132
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %14, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %136, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* %10, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %125
  %146 = load i32, i32* @XML_TRUE, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %125
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  store i32 1, i32* %7, align 4
  br label %154

154:                                              ; preds = %149, %116, %95, %41
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i64 @MALLOC(i32, i32) #1

declare dso_local i64 @REALLOC(i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
