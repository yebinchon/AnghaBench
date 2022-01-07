; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leaf_to_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leaf_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32*, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_30__, %struct.TYPE_33__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_32__, i8** }
%struct.TYPE_32__ = type { i32, %struct.TYPE_31__, i8*, i64, i8* }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_35__ = type { i32 }

@XFS_DIR2_FREE_SPACE = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_MAGIC = common dso_local global i32 0, align 4
@NULLDATAOFF = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_to_node(%struct.TYPE_29__* %0, %struct.TYPE_37__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %5, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %21 = call i32 @trace_xfs_dir2_leaf_to_node(%struct.TYPE_29__* %20)
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  store %struct.TYPE_34__* %24, %struct.TYPE_34__** %6, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  store %struct.TYPE_33__* %27, %struct.TYPE_33__** %15, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %19, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %32 = load i32, i32* @XFS_DIR2_FREE_SPACE, align 4
  %33 = call i32 @xfs_dir2_grow_inode(%struct.TYPE_29__* %31, i32 %32, i64* %9)
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %162

37:                                               ; preds = %2
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %40 = call i64 @XFS_DIR2_FREE_FIRSTDB(%struct.TYPE_33__* %39)
  %41 = icmp eq i64 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load i32*, i32** %19, align 8
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_33__* %46, i64 %47)
  %49 = load i32, i32* @XFS_DATA_FORK, align 4
  %50 = call i32 @xfs_da_get_buf(i32* %44, %struct.TYPE_34__* %45, i32 %48, i32 -1, %struct.TYPE_37__** %8, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %162

54:                                               ; preds = %37
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %56 = icmp ne %struct.TYPE_37__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_36__*, %struct.TYPE_36__** %60, align 8
  store %struct.TYPE_36__* %61, %struct.TYPE_36__** %10, align 8
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_36__*, %struct.TYPE_36__** %63, align 8
  store %struct.TYPE_36__* %64, %struct.TYPE_36__** %13, align 8
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %66 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %67 = call %struct.TYPE_35__* @xfs_dir2_leaf_tail_p(%struct.TYPE_33__* %65, %struct.TYPE_36__* %66)
  store %struct.TYPE_35__* %67, %struct.TYPE_35__** %14, align 8
  %68 = load i32, i32* @XFS_DIR2_FREE_MAGIC, align 4
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 4
  store i8* %69, i8** %72, align 8
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be32_to_cpu(i32 %78)
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %84, %87
  %89 = icmp sle i32 %79, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %99 = call i8** @xfs_dir2_leaf_bests_p(%struct.TYPE_35__* %98)
  store i8** %99, i8*** %11, align 8
  %100 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  store i8** %102, i8*** %18, align 8
  br label %103

103:                                              ; preds = %123, %54
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %103
  %111 = load i8**, i8*** %11, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @be16_to_cpu(i8* %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* @NULLDATAOFF, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i32, i32* %17, align 4
  %121 = call i8* @cpu_to_be16(i32 %120)
  %122 = load i8**, i8*** %18, align 8
  store i8* %121, i8** %122, align 8
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  %126 = load i8**, i8*** %11, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i32 1
  store i8** %127, i8*** %11, align 8
  %128 = load i8**, i8*** %18, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %129, i8*** %18, align 8
  br label %103

130:                                              ; preds = %103
  %131 = load i32, i32* %16, align 4
  %132 = call i8* @cpu_to_be32(i32 %131)
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 2
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* @XFS_DIR2_LEAFN_MAGIC, align 4
  %137 = call i8* @cpu_to_be16(i32 %136)
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 0
  store i8* %137, i8** %141, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %144 = call i32 @xfs_dir2_leaf_log_header(i32* %142, %struct.TYPE_37__* %143)
  %145 = load i32*, i32** %19, align 8
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %147 = call i32 @xfs_dir2_free_log_header(i32* %145, %struct.TYPE_37__* %146)
  %148 = load i32*, i32** %19, align 8
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @be32_to_cpu(i32 %153)
  %155 = sub nsw i32 %154, 1
  %156 = call i32 @xfs_dir2_free_log_bests(i32* %148, %struct.TYPE_37__* %149, i32 0, i32 %155)
  %157 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %158 = call i32 @xfs_da_buf_done(%struct.TYPE_37__* %157)
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %161 = call i32 @xfs_dir2_leafn_check(%struct.TYPE_34__* %159, %struct.TYPE_37__* %160)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %130, %52, %35
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @trace_xfs_dir2_leaf_to_node(%struct.TYPE_29__*) #1

declare dso_local i32 @xfs_dir2_grow_inode(%struct.TYPE_29__*, i32, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_DIR2_FREE_FIRSTDB(%struct.TYPE_33__*) #1

declare dso_local i32 @xfs_da_get_buf(i32*, %struct.TYPE_34__*, i32, i32, %struct.TYPE_37__**, i32) #1

declare dso_local i32 @xfs_dir2_db_to_da(%struct.TYPE_33__*, i64) #1

declare dso_local %struct.TYPE_35__* @xfs_dir2_leaf_tail_p(%struct.TYPE_33__*, %struct.TYPE_36__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8** @xfs_dir2_leaf_bests_p(%struct.TYPE_35__*) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_header(i32*, %struct.TYPE_37__*) #1

declare dso_local i32 @xfs_dir2_free_log_header(i32*, %struct.TYPE_37__*) #1

declare dso_local i32 @xfs_dir2_free_log_bests(i32*, %struct.TYPE_37__*, i32, i32) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_37__*) #1

declare dso_local i32 @xfs_dir2_leafn_check(%struct.TYPE_34__*, %struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
