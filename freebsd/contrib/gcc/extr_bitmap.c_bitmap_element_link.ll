; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_element_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_element_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @bitmap_element_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_element_link(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  br label %127

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %6, align 8
  br label %32

32:                                               ; preds = %48, %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ugt i32 %42, %43
  br label %45

45:                                               ; preds = %37, %32
  %46 = phi i1 [ false, %32 ], [ %44, %37 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %6, align 8
  br label %32

52:                                               ; preds = %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %62, align 8
  br label %67

63:                                               ; preds = %52
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %78, align 8
  br label %126

79:                                               ; preds = %22
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %6, align 8
  br label %83

83:                                               ; preds = %99, %79
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp ult i32 %93, %94
  br label %96

96:                                               ; preds = %88, %83
  %97 = phi i1 [ false, %83 ], [ %95, %88 ]
  br i1 %97, label %98, label %103

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %6, align 8
  br label %83

103:                                              ; preds = %96
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = icmp ne %struct.TYPE_5__* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %113, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %125, align 8
  br label %126

126:                                              ; preds = %114, %67
  br label %127

127:                                              ; preds = %126, %14
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %130, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
