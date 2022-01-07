; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.c_var_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.c_var_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@NO_PARTITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @var_union(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @SSA_NAME, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @SSA_NAME_VERSION(i64 %22)
  %24 = call i32 @partition_find(i32 %21, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @var_to_partition(%struct.TYPE_5__* %26, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %18
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @SSA_NAME, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @SSA_NAME_VERSION(i64 %52)
  %54 = call i32 @partition_find(i32 %51, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %88

55:                                               ; preds = %43
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @var_to_partition(%struct.TYPE_5__* %56, i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %63, %55
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @DECL_P(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @DECL_IGNORED_P(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %71
  %83 = load i64, i64* %10, align 8
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* %10, align 8
  br label %87

85:                                               ; preds = %78, %74
  %86 = load i64, i64* %6, align 8
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %85, %82
  br label %88

88:                                               ; preds = %87, %48
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @NO_PARTITION, align 4
  %91 = icmp ne i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @gcc_assert(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @NO_PARTITION, align 4
  %96 = icmp ne i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @gcc_assert(i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %9, align 4
  br label %111

104:                                              ; preds = %88
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @partition_union(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %104, %102
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %116, %111
  %125 = load i64, i64* %10, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @change_partition_var(%struct.TYPE_5__* %128, i64 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %124
  %133 = load i64, i64* %11, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @change_partition_var(%struct.TYPE_5__* %136, i64 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %132
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @partition_find(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i64) #1

declare dso_local i32 @var_to_partition(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @DECL_IGNORED_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @partition_union(i32, i32, i32) #1

declare dso_local i32 @change_partition_var(%struct.TYPE_5__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
