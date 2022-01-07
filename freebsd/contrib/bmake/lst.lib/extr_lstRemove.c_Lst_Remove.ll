; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/lst.lib/extr_lstRemove.c_Lst_Remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/lst.lib/extr_lstRemove.c_Lst_Remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }

@FAILURE = common dso_local global i32 0, align 4
@Unknown = common dso_local global i32 0, align 4
@LN_DELETED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Lst_Remove(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = call i32 @LstValid(%struct.TYPE_12__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = call i32 @LstNodeValid(%struct.TYPE_11__* %14, %struct.TYPE_12__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @FAILURE, align 4
  store i32 %19, i32* %3, align 4
  br label %121

20:                                               ; preds = %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %32, align 8
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %45, align 8
  br label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = icmp eq %struct.TYPE_11__* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %57, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = icmp eq %struct.TYPE_11__* %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 5
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = icmp eq %struct.TYPE_11__* %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = icmp eq %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load i32, i32* @Unknown, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %81
  br label %96

96:                                               ; preds = %95, %75, %70
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = icmp eq %struct.TYPE_11__* %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %104, align 8
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = call i32 @free(%struct.TYPE_11__* %111)
  br label %119

113:                                              ; preds = %105
  %114 = load i32, i32* @LN_DELETED, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %110
  %120 = load i32, i32* @SUCCESS, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %18
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @LstValid(%struct.TYPE_12__*) #1

declare dso_local i32 @LstNodeValid(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
