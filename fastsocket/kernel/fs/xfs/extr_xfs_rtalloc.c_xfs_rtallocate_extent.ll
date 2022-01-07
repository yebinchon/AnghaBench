; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rtalloc.c_xfs_rtallocate_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rtalloc.c_xfs_rtallocate_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@NULLRTBLOCK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@XFS_TRANS_SB_RES_FREXTENTS = common dso_local global i32 0, align 4
@XFS_TRANS_SB_FREXTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtallocate_extent(%struct.TYPE_11__* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64* %8, i64** %19, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %20, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %34 = call i32 @xfs_isilocked(i32 %32, i32 %33)
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %9
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp sle i32 %39, %40
  br label %42

42:                                               ; preds = %38, %9
  %43 = phi i1 [ false, %9 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i32, i32* %18, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %18, align 4
  %51 = srem i32 %49, %50
  store i32 %51, i32* %25, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %25, align 4
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %18, align 4
  %60 = srem i32 %58, %59
  store i32 %60, i32* %25, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %25, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* @NULLRTBLOCK, align 8
  %74 = load i64*, i64** %19, align 8
  store i64 %73, i64* %74, align 8
  store i32 0, i32* %10, align 4
  br label %151

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %42
  store i32* null, i32** %24, align 8
  %77 = load i32, i32* %16, align 4
  switch i32 %77, label %104 [
    i32 130, label %78
    i32 129, label %86
    i32 128, label %95
  ]

78:                                               ; preds = %76
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @xfs_rtallocate_extent_size(%struct.TYPE_12__* %79, %struct.TYPE_11__* %80, i32 %81, i32 %82, i32* %83, i32** %24, i32* %23, i32 %84, i64* %22)
  store i32 %85, i32* %21, align 4
  br label %107

86:                                               ; preds = %76
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @xfs_rtallocate_extent_near(%struct.TYPE_12__* %87, %struct.TYPE_11__* %88, i64 %89, i32 %90, i32 %91, i32* %92, i32** %24, i32* %23, i32 %93, i64* %22)
  store i32 %94, i32* %21, align 4
  br label %107

95:                                               ; preds = %76
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @xfs_rtallocate_extent_exact(%struct.TYPE_12__* %96, %struct.TYPE_11__* %97, i64 %98, i32 %99, i32 %100, i32* %101, i32** %24, i32* %23, i32 %102, i64* %22)
  store i32 %103, i32* %21, align 4
  br label %107

104:                                              ; preds = %76
  %105 = load i32, i32* @EIO, align 4
  store i32 %105, i32* %21, align 4
  %106 = call i32 @ASSERT(i32 0)
  br label %107

107:                                              ; preds = %104, %95, %86, %78
  %108 = load i32, i32* %21, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %21, align 4
  store i32 %111, i32* %10, align 4
  br label %151

112:                                              ; preds = %107
  %113 = load i64, i64* %22, align 8
  %114 = load i64, i64* @NULLRTBLOCK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %26, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp sle i32 %126, %127
  br label %129

129:                                              ; preds = %124, %116
  %130 = phi i1 [ false, %116 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @ASSERT(i32 %131)
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %137 = load i32, i32* @XFS_TRANS_SB_RES_FREXTENTS, align 4
  %138 = load i64, i64* %26, align 8
  %139 = sub nsw i64 0, %138
  %140 = call i32 @xfs_trans_mod_sb(%struct.TYPE_11__* %136, i32 %137, i64 %139)
  br label %147

141:                                              ; preds = %129
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %143 = load i32, i32* @XFS_TRANS_SB_FREXTENTS, align 4
  %144 = load i64, i64* %26, align 8
  %145 = sub nsw i64 0, %144
  %146 = call i32 @xfs_trans_mod_sb(%struct.TYPE_11__* %142, i32 %143, i64 %145)
  br label %147

147:                                              ; preds = %141, %135
  br label %148

148:                                              ; preds = %147, %112
  %149 = load i64, i64* %22, align 8
  %150 = load i64*, i64** %19, align 8
  store i64 %149, i64* %150, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %148, %110, %72
  %152 = load i32, i32* %10, align 4
  ret i32 %152
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(i32, i32) #1

declare dso_local i32 @xfs_rtallocate_extent_size(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32*, i32**, i32*, i32, i64*) #1

declare dso_local i32 @xfs_rtallocate_extent_near(%struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32, i32, i32*, i32**, i32*, i32, i64*) #1

declare dso_local i32 @xfs_rtallocate_extent_exact(%struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32, i32, i32*, i32**, i32*, i32, i64*) #1

declare dso_local i32 @xfs_trans_mod_sb(%struct.TYPE_11__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
