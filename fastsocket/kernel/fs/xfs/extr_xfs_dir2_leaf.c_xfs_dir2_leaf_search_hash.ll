; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_search_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_search_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_search_hash(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %10, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @be16_to_cpu(i32 %29)
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %64, %22
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be32_to_cpu(i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %65

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %35

65:                                               ; preds = %53, %35
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i32, i32* %12, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @be32_to_cpu(i32 %80)
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %73, %70
  %85 = phi i1 [ false, %70 ], [ %83, %73 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %12, align 4
  br label %70

89:                                               ; preds = %84
  br label %98

90:                                               ; preds = %65
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %97, %89
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %21
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
