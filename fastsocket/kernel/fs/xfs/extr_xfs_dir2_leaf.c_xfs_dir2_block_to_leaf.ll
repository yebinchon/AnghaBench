; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_block_to_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_block_to_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32*, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { %struct.TYPE_39__, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__*, i8*, i8*, i8* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_42__ = type { i8* }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_to_leaf(%struct.TYPE_37__* %0, %struct.TYPE_45__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_45__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_43__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca %struct.TYPE_41__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_45__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_43__*, align 8
  %16 = alloca %struct.TYPE_42__*, align 8
  %17 = alloca %struct.TYPE_40__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_45__* %1, %struct.TYPE_45__** %5, align 8
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %22 = call i32 @trace_xfs_dir2_block_to_leaf(%struct.TYPE_37__* %21)
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  store %struct.TYPE_41__* %25, %struct.TYPE_41__** %11, align 8
  %26 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  store %struct.TYPE_40__* %28, %struct.TYPE_40__** %17, align 8
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %20, align 8
  %32 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %33 = call i32 @xfs_da_grow_inode(%struct.TYPE_37__* %32, i32* %7)
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %3, align 4
  br label %182

37:                                               ; preds = %2
  %38 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @xfs_dir2_da_to_db(%struct.TYPE_40__* %38, i32 %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %43 = call i64 @XFS_DIR2_LEAF_FIRSTDB(%struct.TYPE_40__* %42)
  %44 = icmp eq i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %50 = call i32 @xfs_dir2_leaf_init(%struct.TYPE_37__* %47, i64 %48, %struct.TYPE_45__** %13, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %3, align 4
  br label %182

54:                                               ; preds = %37
  %55 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %56 = icmp ne %struct.TYPE_45__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_43__*, %struct.TYPE_43__** %60, align 8
  store %struct.TYPE_43__* %61, %struct.TYPE_43__** %15, align 8
  %62 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_43__*, %struct.TYPE_43__** %63, align 8
  store %struct.TYPE_43__* %64, %struct.TYPE_43__** %8, align 8
  %65 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %66 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %67 = call i32 @xfs_dir2_data_check(%struct.TYPE_41__* %65, %struct.TYPE_45__* %66)
  %68 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %69 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %70 = call %struct.TYPE_44__* @xfs_dir2_block_tail_p(%struct.TYPE_40__* %68, %struct.TYPE_43__* %69)
  store %struct.TYPE_44__* %70, %struct.TYPE_44__** %10, align 8
  %71 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %72 = call i32* @xfs_dir2_block_leaf_p(%struct.TYPE_44__* %71)
  store i32* %72, i32** %9, align 8
  %73 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = call i8* @cpu_to_be16(i32 %76)
  %78 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  %85 = call i8* @cpu_to_be16(i32 %84)
  %86 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %87, i32 0, i32 3
  store i8* %85, i8** %88, align 8
  %89 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be32_to_cpu(i32 %95)
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memcpy(i32 %91, i32* %92, i32 %99)
  %101 = load i32*, i32** %20, align 8
  %102 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %103 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @be16_to_cpu(i8* %106)
  %108 = sub nsw i64 %107, 1
  %109 = call i32 @xfs_dir2_leaf_log_ents(i32* %101, %struct.TYPE_45__* %102, i32 0, i64 %108)
  store i32 0, i32* %19, align 4
  store i32 1, i32* %18, align 4
  %110 = load i32*, i32** %20, align 8
  %111 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %115 = bitcast %struct.TYPE_43__* %114 to i8*
  %116 = ptrtoint i8* %113 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %121 = bitcast %struct.TYPE_43__* %120 to i8*
  %122 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i32*, i32** %9, align 8
  %128 = bitcast i32* %127 to i8*
  %129 = ptrtoint i8* %126 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @xfs_dir2_data_make_free(i32* %110, %struct.TYPE_45__* %111, i32 %119, i32 %132, i32* %18, i32* %19)
  %134 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %135 = call i8* @cpu_to_be32(i32 %134)
  %136 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %54
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %143 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %144 = bitcast %struct.TYPE_43__* %143 to i32*
  %145 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_40__* %142, i32* %144, i32* %18)
  br label %146

146:                                              ; preds = %141, %54
  %147 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %148 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %149 = call %struct.TYPE_42__* @xfs_dir2_leaf_tail_p(%struct.TYPE_40__* %147, %struct.TYPE_43__* %148)
  store %struct.TYPE_42__* %149, %struct.TYPE_42__** %16, align 8
  %150 = call i8* @cpu_to_be32(i32 1)
  %151 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %154 = call i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_42__* %153)
  store i32* %154, i32** %6, align 8
  %155 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %146
  %167 = load i32*, i32** %20, align 8
  %168 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %169 = call i32 @xfs_dir2_data_log_header(i32* %167, %struct.TYPE_45__* %168)
  br label %170

170:                                              ; preds = %166, %146
  %171 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %172 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %173 = call i32 @xfs_dir2_leaf_check(%struct.TYPE_41__* %171, %struct.TYPE_45__* %172)
  %174 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %175 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %176 = call i32 @xfs_dir2_data_check(%struct.TYPE_41__* %174, %struct.TYPE_45__* %175)
  %177 = load i32*, i32** %20, align 8
  %178 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %179 = call i32 @xfs_dir2_leaf_log_bests(i32* %177, %struct.TYPE_45__* %178, i32 0, i32 0)
  %180 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %181 = call i32 @xfs_da_buf_done(%struct.TYPE_45__* %180)
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %170, %52, %35
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @trace_xfs_dir2_block_to_leaf(%struct.TYPE_37__*) #1

declare dso_local i32 @xfs_da_grow_inode(%struct.TYPE_37__*, i32*) #1

declare dso_local i64 @xfs_dir2_da_to_db(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_DIR2_LEAF_FIRSTDB(%struct.TYPE_40__*) #1

declare dso_local i32 @xfs_dir2_leaf_init(%struct.TYPE_37__*, i64, %struct.TYPE_45__**, i32) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_41__*, %struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_44__* @xfs_dir2_block_tail_p(%struct.TYPE_40__*, %struct.TYPE_43__*) #1

declare dso_local i32* @xfs_dir2_block_leaf_p(%struct.TYPE_44__*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_ents(i32*, %struct.TYPE_45__*, i32, i64) #1

declare dso_local i64 @be16_to_cpu(i8*) #1

declare dso_local i32 @xfs_dir2_data_make_free(i32*, %struct.TYPE_45__*, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_40__*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @xfs_dir2_leaf_tail_p(%struct.TYPE_40__*, %struct.TYPE_43__*) #1

declare dso_local i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_42__*) #1

declare dso_local i32 @xfs_dir2_data_log_header(i32*, %struct.TYPE_45__*) #1

declare dso_local i32 @xfs_dir2_leaf_check(%struct.TYPE_41__*, %struct.TYPE_45__*) #1

declare dso_local i32 @xfs_dir2_leaf_log_bests(i32*, %struct.TYPE_45__*, i32, i32) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
