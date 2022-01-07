; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32, i64, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_21__, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32 }

@ENOENT = common dso_local global i64 0, align 8
@XFS_IFINLINE = common dso_local global i32 0, align 4
@xfs_dir2_sf_hdr_t = common dso_local global i32 0, align 4
@parent = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_ILOG_DDATA = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_sf_addname(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %16 = call i32 @trace_xfs_dir2_sf_addname(%struct.TYPE_26__* %15)
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %18 = call i64 @xfs_dir2_sf_lookup(%struct.TYPE_26__* %17)
  %19 = load i64, i64* @ENOENT, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %5, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @XFS_IFINLINE, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @xfs_dir2_sf_hdr_t, align 4
  %38 = load i32, i32* @parent, align 4
  %39 = call i64 @offsetof(i32 %37, i32 %38)
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %1
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @XFS_FORCED_SHUTDOWN(i32 %44)
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = call i32 @XFS_ERROR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %170

49:                                               ; preds = %1
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %74, %struct.TYPE_25__** %13, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @xfs_dir2_sf_hdr_size(i64 %82)
  %84 = icmp sge i64 %78, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @xfs_dir2_sf_entsize_byname(%struct.TYPE_25__* %87, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %103 = call i32 @XFS_IFORK_DSIZE(%struct.TYPE_24__* %102)
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %49
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @xfs_dir2_sf_addname_pick(%struct.TYPE_26__* %106, i32 %107, i32** %14, i32* %10)
  store i32 %108, i32* %12, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %105, %49
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %110
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %110
  %123 = load i32, i32* @ENOSPC, align 4
  %124 = call i32 @XFS_ERROR(i32 %123)
  store i32 %124, i32* %2, align 4
  br label %170

125:                                              ; preds = %117
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %127 = call i32 @xfs_dir2_sf_to_block(%struct.TYPE_26__* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %170

132:                                              ; preds = %125
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %134 = call i32 @xfs_dir2_block_addname(%struct.TYPE_26__* %133)
  store i32 %134, i32* %2, align 4
  br label %170

135:                                              ; preds = %105
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %170

143:                                              ; preds = %135
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @xfs_dir2_sf_addname_easy(%struct.TYPE_26__* %147, i32* %148, i32 %149, i32 %150)
  br label %161

152:                                              ; preds = %143
  %153 = load i32, i32* %12, align 4
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i32
  %156 = call i32 @ASSERT(i32 %155)
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @xfs_dir2_sf_addname_hard(%struct.TYPE_26__* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %152, %146
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %166 = load i32, i32* @XFS_ILOG_CORE, align 4
  %167 = load i32, i32* @XFS_ILOG_DDATA, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @xfs_trans_log_inode(i32 %164, %struct.TYPE_24__* %165, i32 %168)
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %161, %142, %132, %130, %122, %41
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @trace_xfs_dir2_sf_addname(%struct.TYPE_26__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_dir2_sf_lookup(%struct.TYPE_26__*) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @xfs_dir2_sf_hdr_size(i64) #1

declare dso_local i32 @xfs_dir2_sf_entsize_byname(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @XFS_IFORK_DSIZE(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_dir2_sf_addname_pick(%struct.TYPE_26__*, i32, i32**, i32*) #1

declare dso_local i32 @xfs_dir2_sf_to_block(%struct.TYPE_26__*) #1

declare dso_local i32 @xfs_dir2_block_addname(%struct.TYPE_26__*) #1

declare dso_local i32 @xfs_dir2_sf_addname_easy(%struct.TYPE_26__*, i32*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_addname_hard(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
