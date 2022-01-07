; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_builtin_candidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_builtin_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32 }
%struct.TYPE_6__ = type { i64 }

@NULL_TREE = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z_candidate**, i64, i64, i64, i64*, i64*, i32)* @build_builtin_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_builtin_candidate(%struct.z_candidate** %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5, i32 %6) #0 {
  %8 = alloca %struct.z_candidate**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i64], align 16
  store %struct.z_candidate** %0, %struct.z_candidate*** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 1, i32* %18, align 4
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %21, i64* %22, align 16
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %23, i64* %24, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  br label %37

30:                                               ; preds = %7
  %31 = load i64*, i64** %12, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2, i32 1
  br label %37

37:                                               ; preds = %30, %29
  %38 = phi i32 [ 3, %29 ], [ %36, %30 ]
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %17, align 8
  %41 = call %struct.TYPE_6__** @alloc_conversions(i64 %40)
  store %struct.TYPE_6__** %41, %struct.TYPE_6__*** %16, align 8
  store i32 0, i32* %19, align 4
  br label %42

42:                                               ; preds = %92, %37
  %43 = load i32, i32* %19, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %95

45:                                               ; preds = %42
  %46 = load i64*, i64** %12, align 8
  %47 = load i32, i32* %19, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %95

53:                                               ; preds = %45
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %13, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %12, align 8
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call %struct.TYPE_6__* @implicit_conversion(i64 %57, i64 %62, i64 %67, i32 0, i32 %68)
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %15, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %53
  store i32 0, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @NULL_TREE, align 4
  %78 = call %struct.TYPE_6__* @build_identity_conv(i64 %76, i32 %77)
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %15, align 8
  br label %86

79:                                               ; preds = %53
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %18, align 4
  br label %85

85:                                               ; preds = %84, %79
  br label %86

86:                                               ; preds = %85, %72
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %91, align 8
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  br label %42

95:                                               ; preds = %52, %42
  %96 = load i64*, i64** %12, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %95
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %104, i64 2
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %105, align 8
  %106 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %106, i64 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %109, i64 1
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %110, align 8
  %111 = load i64, i64* @boolean_type_node, align 8
  %112 = load i64*, i64** %13, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %12, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call %struct.TYPE_6__* @implicit_conversion(i64 %111, i64 %114, i64 %117, i32 0, i32 %118)
  store %struct.TYPE_6__* %119, %struct.TYPE_6__** %15, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %121 = icmp ne %struct.TYPE_6__* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %100
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %124 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %124, i64 0
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %125, align 8
  br label %127

126:                                              ; preds = %100
  store i32 0, i32* %18, align 4
  br label %127

127:                                              ; preds = %126, %122
  br label %128

128:                                              ; preds = %127, %95
  %129 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* @NULL_TREE, align 4
  %132 = load i64, i64* %17, align 8
  %133 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %134 = load i32, i32* @NULL_TREE, align 4
  %135 = load i32, i32* @NULL_TREE, align 4
  %136 = load i32, i32* %18, align 4
  %137 = call i32 @add_candidate(%struct.z_candidate** %129, i64 %130, i32 %131, i64 %132, %struct.TYPE_6__** %133, i32 %134, i32 %135, i32 %136)
  ret void
}

declare dso_local %struct.TYPE_6__** @alloc_conversions(i64) #1

declare dso_local %struct.TYPE_6__* @implicit_conversion(i64, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_6__* @build_identity_conv(i64, i32) #1

declare dso_local i32 @add_candidate(%struct.z_candidate**, i64, i32, i64, %struct.TYPE_6__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
