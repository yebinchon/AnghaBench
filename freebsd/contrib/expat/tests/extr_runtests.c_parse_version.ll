; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_parse_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_parse_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ASCII_0 = common dso_local global i32 0, align 4
@ASCII_9 = common dso_local global i32 0, align 4
@XML_FALSE = common dso_local global i32 0, align 4
@ASCII_PERIOD = common dso_local global i32 0, align 4
@XML_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @parse_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_version(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ASCII_0, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ASCII_9, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15, %10
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  br label %6

24:                                               ; preds = %20, %6
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @XML_FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %138

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %45, %30
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ASCII_0, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ASCII_9, align 4
  %42 = icmp sle i32 %40, %41
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %58

45:                                               ; preds = %43
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 10, %48
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %4, align 8
  %52 = load i32, i32* %50, align 4
  %53 = load i32, i32* @ASCII_0, align 4
  %54 = sub nsw i32 %52, %53
  %55 = add nsw i32 %49, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %33

58:                                               ; preds = %43
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %4, align 8
  %61 = load i32, i32* %59, align 4
  %62 = load i32, i32* @ASCII_PERIOD, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @XML_FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %138

66:                                               ; preds = %58
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %81, %66
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ASCII_0, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ASCII_9, align 4
  %78 = icmp sle i32 %76, %77
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %94

81:                                               ; preds = %79
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 10, %84
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %4, align 8
  %88 = load i32, i32* %86, align 4
  %89 = load i32, i32* @ASCII_0, align 4
  %90 = sub nsw i32 %88, %89
  %91 = add nsw i32 %85, %90
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %69

94:                                               ; preds = %79
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %4, align 8
  %97 = load i32, i32* %95, align 4
  %98 = load i32, i32* @ASCII_PERIOD, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @XML_FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %138

102:                                              ; preds = %94
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %117, %102
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ASCII_0, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ASCII_9, align 4
  %114 = icmp sle i32 %112, %113
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i1 [ false, %105 ], [ %114, %110 ]
  br i1 %116, label %117, label %130

117:                                              ; preds = %115
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 10, %120
  %122 = load i32*, i32** %4, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %4, align 8
  %124 = load i32, i32* %122, align 4
  %125 = load i32, i32* @ASCII_0, align 4
  %126 = sub nsw i32 %124, %125
  %127 = add nsw i32 %121, %126
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  br label %105

130:                                              ; preds = %115
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @XML_FALSE, align 4
  store i32 %135, i32* %3, align 4
  br label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @XML_TRUE, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %134, %100, %64, %28
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
