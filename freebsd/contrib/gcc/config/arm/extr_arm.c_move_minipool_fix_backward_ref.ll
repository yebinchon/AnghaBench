; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_move_minipool_fix_backward_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_move_minipool_fix_backward_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_7__*, i64, %struct.TYPE_7__* }

@minipool_vector_head = common dso_local global %struct.TYPE_7__* null, align 8
@minipool_vector_tail = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, %struct.TYPE_7__*, i64)* @move_minipool_fix_backward_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @move_minipool_fix_backward_ref(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = icmp ne %struct.TYPE_7__* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %15
  br label %78

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %26
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %48, align 8
  br label %53

49:                                               ; preds = %26
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** @minipool_vector_head, align 8
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %53
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %74, align 8
  br label %77

75:                                               ; preds = %53
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** @minipool_vector_tail, align 8
  br label %77

77:                                               ; preds = %75, %69
  br label %78

78:                                               ; preds = %77, %25
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %5, align 8
  store i64 0, i64* %7, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @minipool_vector_head, align 8
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %4, align 8
  br label %81

81:                                               ; preds = %130, %78
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %134

84:                                               ; preds = %81
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %92, %84
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = icmp ne %struct.TYPE_7__* %101, null
  br i1 %102, label %103, label %129

103:                                              ; preds = %98
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = icmp slt i64 %108, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %103
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %117, %103, %98
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  store %struct.TYPE_7__* %133, %struct.TYPE_7__** %4, align 8
  br label %81

134:                                              ; preds = %81
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %135
}

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
