; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_unbalance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_unbalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_19__*, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_leafn_unbalance(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %7, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %8, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %9, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @be16_to_cpu(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @be16_to_cpu(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %3
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = call i32 @xfs_dir2_leaf_compact(%struct.TYPE_26__* %65, %struct.TYPE_19__* %68)
  br label %70

70:                                               ; preds = %64, %3
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = call i32 @xfs_dir2_leaf_compact(%struct.TYPE_26__* %77, %struct.TYPE_19__* %80)
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @be16_to_cpu(i32 %89)
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @be32_to_cpu(i32 %95)
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = call i64 @xfs_dir2_leafn_order(%struct.TYPE_19__* %101, %struct.TYPE_19__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %82
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @be16_to_cpu(i32 %118)
  %120 = call i32 @xfs_dir2_leafn_moveents(%struct.TYPE_26__* %108, %struct.TYPE_19__* %111, i32 0, %struct.TYPE_19__* %114, i32 0, i32 %119)
  br label %140

121:                                              ; preds = %82
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @be16_to_cpu(i32 %132)
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @be16_to_cpu(i32 %137)
  %139 = call i32 @xfs_dir2_leafn_moveents(%struct.TYPE_26__* %122, %struct.TYPE_19__* %125, i32 0, %struct.TYPE_19__* %128, i32 %133, i32 %138)
  br label %140

140:                                              ; preds = %121, %107
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @be16_to_cpu(i32 %147)
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @be32_to_cpu(i32 %153)
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = call i32 @xfs_dir2_leafn_check(i32 %159, %struct.TYPE_19__* %162)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_leaf_compact(%struct.TYPE_26__*, %struct.TYPE_19__*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_dir2_leafn_order(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @xfs_dir2_leafn_moveents(%struct.TYPE_26__*, %struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_leafn_check(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
