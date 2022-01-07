; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_to_shortform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_to_shortform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8* }
%struct.TYPE_27__ = type { i64, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_24__, %struct.TYPE_30__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i32, i32* }

@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4
@XFS_MOUNT_ATTR2 = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_to_shortform(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_27__, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %16 = call i32 @trace_xfs_attr_leaf_to_sf(%struct.TYPE_27__* %15)
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 12
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %11, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %23 = call i32 @XFS_LBSIZE(%struct.TYPE_22__* %22)
  %24 = load i32, i32* @KM_SLEEP, align 4
  %25 = call i8* @kmem_alloc(i32 %23, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = icmp ne %struct.TYPE_26__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = call i32 @XFS_LBSIZE(%struct.TYPE_22__* %40)
  %42 = call i32 @memcpy(i8* %34, i8* %37, i32 %41)
  %43 = load i8*, i8** %12, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %44, %struct.TYPE_28__** %7, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be16_to_cpu(i32 %49)
  %51 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %59, align 8
  %61 = call i32 @XFS_LBSIZE(%struct.TYPE_22__* %60)
  %62 = call i32 @memset(i8* %57, i32 0, i32 %61)
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %65 = call i32 @xfs_da_shrink_inode(%struct.TYPE_27__* %63, i32 0, %struct.TYPE_26__* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %3
  br label %195

69:                                               ; preds = %3
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @xfs_attr_fork_reset(%struct.TYPE_25__* %89, i32 %92)
  br label %195

94:                                               ; preds = %69
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %96 = call i32 @xfs_attr_shortform_create(%struct.TYPE_27__* %95)
  %97 = bitcast %struct.TYPE_27__* %10 to i8*
  %98 = call i32 @memset(i8* %97, i32 0, i32 72)
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 12
  store %struct.TYPE_25__* %99, %struct.TYPE_25__** %100, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 11
  store i32 %103, i32* %104, align 4
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 10
  store i32 %107, i32* %108, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 9
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @XFS_ATTR_FORK, align 4
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 8
  store i32 %113, i32* %114, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 7
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 6
  store i32 %119, i32* %120, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i64 0
  store %struct.TYPE_30__* %124, %struct.TYPE_30__** %8, align 8
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %189, %94
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @be16_to_cpu(i32 %130)
  %132 = icmp slt i32 %126, %131
  br i1 %132, label %133, label %194

133:                                              ; preds = %125
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %189

141:                                              ; preds = %133
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  br label %189

147:                                              ; preds = %141
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %152 = and i32 %150, %151
  %153 = call i32 @ASSERT(i32 %152)
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call %struct.TYPE_29__* @xfs_attr_leaf_name_local(%struct.TYPE_28__* %154, i32 %155)
  store %struct.TYPE_29__* %156, %struct.TYPE_29__** %9, align 8
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 5
  store i32* %159, i32** %160, align 8
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 4
  store i32* %170, i32** %171, align 8
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @be16_to_cpu(i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  store i32 %175, i32* %176, align 8
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @be32_to_cpu(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 3
  store i32 %180, i32* %181, align 8
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @XFS_ATTR_NSP_ONDISK_TO_ARGS(i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 2
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @xfs_attr_shortform_add(%struct.TYPE_27__* %10, i32 %187)
  br label %189

189:                                              ; preds = %147, %146, %140
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 1
  store %struct.TYPE_30__* %191, %struct.TYPE_30__** %8, align 8
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  br label %125

194:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %195

195:                                              ; preds = %194, %72, %68
  %196 = load i8*, i8** %12, align 8
  %197 = call i32 @kmem_free(i8* %196)
  %198 = load i32, i32* %13, align 4
  ret i32 %198
}

declare dso_local i32 @trace_xfs_attr_leaf_to_sf(%struct.TYPE_27__*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @XFS_LBSIZE(%struct.TYPE_22__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @xfs_da_shrink_inode(%struct.TYPE_27__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @xfs_attr_fork_reset(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_attr_shortform_create(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_29__* @xfs_attr_leaf_name_local(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @XFS_ATTR_NSP_ONDISK_TO_ARGS(i32) #1

declare dso_local i32 @xfs_attr_shortform_add(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @kmem_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
