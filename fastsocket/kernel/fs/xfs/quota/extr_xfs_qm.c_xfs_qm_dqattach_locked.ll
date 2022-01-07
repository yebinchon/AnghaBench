; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm.c_xfs_qm_dqattach_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm.c_xfs_qm_dqattach_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_14__, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DQ_USER = common dso_local global i32 0, align 4
@XFS_QMOPT_DQALLOC = common dso_local global i32 0, align 4
@XFS_DQ_GROUP = common dso_local global i32 0, align 4
@XFS_DQ_PROJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_dqattach_locked(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = call i32 @xfs_qm_need_dqattach(%struct.TYPE_15__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %19 = call %struct.TYPE_16__* @xfs_isilocked(%struct.TYPE_15__* %17, i32 %18)
  %20 = call i32 @ASSERT(%struct.TYPE_16__* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @XFS_IS_UQUOTA_ON(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XFS_DQ_USER, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @XFS_QMOPT_DQALLOC, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = call i32 @xfs_qm_dqattach_one(%struct.TYPE_15__* %25, i32 %29, i32 %30, i32 %33, %struct.TYPE_16__* null, %struct.TYPE_16__** %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %128

40:                                               ; preds = %24
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %16
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %46 = call %struct.TYPE_16__* @xfs_isilocked(%struct.TYPE_15__* %44, i32 %45)
  %47 = call i32 @ASSERT(%struct.TYPE_16__* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @XFS_IS_OQUOTA_ON(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %43
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @XFS_IS_GQUOTA_ON(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XFS_DQ_GROUP, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @XFS_QMOPT_DQALLOC, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = call i32 @xfs_qm_dqattach_one(%struct.TYPE_15__* %56, i32 %60, i32 %61, i32 %64, %struct.TYPE_16__* %67, %struct.TYPE_16__** %69)
  br label %85

71:                                               ; preds = %51
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = call i32 @xfs_get_projid(%struct.TYPE_15__* %73)
  %75 = load i32, i32* @XFS_DQ_PROJ, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @XFS_QMOPT_DQALLOC, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = call i32 @xfs_qm_dqattach_one(%struct.TYPE_15__* %72, i32 %74, i32 %75, i32 %78, %struct.TYPE_16__* %81, %struct.TYPE_16__** %83)
  br label %85

85:                                               ; preds = %71, %55
  %86 = phi i32 [ %70, %55 ], [ %84, %71 ]
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %128

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %43
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %127

96:                                               ; preds = %93
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %99 = call %struct.TYPE_16__* @xfs_isilocked(%struct.TYPE_15__* %97, i32 %98)
  %100 = call i32 @ASSERT(%struct.TYPE_16__* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = call i32 @ASSERT(%struct.TYPE_16__* %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = call i32 @ASSERT(%struct.TYPE_16__* %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = icmp eq %struct.TYPE_16__* %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %96
  br label %128

119:                                              ; preds = %96
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = call i32 @xfs_qm_dqattach_grouphint(%struct.TYPE_16__* %122, %struct.TYPE_16__* %125)
  br label %127

127:                                              ; preds = %119, %93
  br label %128

128:                                              ; preds = %127, %118, %89, %39
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %15
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @xfs_qm_need_dqattach(%struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @xfs_isilocked(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @XFS_IS_UQUOTA_ON(i32*) #1

declare dso_local i32 @xfs_qm_dqattach_one(%struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__**) #1

declare dso_local i64 @XFS_IS_OQUOTA_ON(i32*) #1

declare dso_local i64 @XFS_IS_GQUOTA_ON(i32*) #1

declare dso_local i32 @xfs_get_projid(%struct.TYPE_15__*) #1

declare dso_local i32 @xfs_qm_dqattach_grouphint(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
