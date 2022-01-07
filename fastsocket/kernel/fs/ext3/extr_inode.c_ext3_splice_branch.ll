; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_splice_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_splice_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.inode = type { %struct.timespec }
%struct.TYPE_13__ = type { i32, i64, i32* }
%struct.ext3_block_alloc_info = type { i64, i64 }
%struct.ext3_inode_info = type { i32, %struct.ext3_block_alloc_info* }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@CURRENT_TIME_SEC = common dso_local global %struct.timespec zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"splicing indirect only\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"splicing direct\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"call journal_forget\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.inode*, i64, %struct.TYPE_13__*, i32, i32)* @ext3_splice_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_splice_branch(%struct.TYPE_12__* %0, %struct.inode* %1, i64 %2, %struct.TYPE_13__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext3_block_alloc_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ext3_inode_info*, align 8
  %19 = alloca %struct.timespec, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = call %struct.ext3_inode_info* @EXT3_I(%struct.inode* %20)
  store %struct.ext3_inode_info* %21, %struct.ext3_inode_info** %18, align 8
  %22 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %18, align 8
  %23 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %22, i32 0, i32 1
  %24 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %23, align 8
  store %struct.ext3_block_alloc_info* %24, %struct.ext3_block_alloc_info** %16, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %6
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @BUFFER_TRACE(i64 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ext3_journal_get_write_access(%struct.TYPE_12__* %34, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %156

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %6
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %43
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %17, align 8
  store i32 1, i32* %14, align 4
  br label %62

62:                                               ; preds = %77, %55
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i64, i64* %17, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %17, align 8
  %69 = trunc i64 %67 to i32
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %62

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %52, %43
  %82 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %16, align 8
  %83 = icmp ne %struct.ext3_block_alloc_info* %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %81
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = sub nsw i64 %88, 1
  %90 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %16, align 8
  %91 = getelementptr inbounds %struct.ext3_block_alloc_info, %struct.ext3_block_alloc_info* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %98, %99
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %16, align 8
  %104 = getelementptr inbounds %struct.ext3_block_alloc_info, %struct.ext3_block_alloc_info* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %84, %81
  %106 = bitcast %struct.timespec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 bitcast (%struct.timespec* @CURRENT_TIME_SEC to i8*), i64 4, i1 false)
  %107 = load %struct.inode*, %struct.inode** %9, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = call i32 @timespec_equal(%struct.timespec* %108, %struct.timespec* %19)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %111, %105
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = bitcast %struct.timespec* %118 to i8*
  %120 = bitcast %struct.timespec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i32 @ext3_mark_inode_dirty(%struct.TYPE_12__* %121, %struct.inode* %122)
  br label %124

124:                                              ; preds = %116, %111
  %125 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %18, align 8
  %126 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @atomic_set(i32* %126, i32 %131)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %124
  %138 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @BUFFER_TRACE(i64 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @ext3_journal_dirty_metadata(%struct.TYPE_12__* %143, i64 %146)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  br label %156

151:                                              ; preds = %137
  br label %154

152:                                              ; preds = %124
  %153 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %151
  %155 = load i32, i32* %15, align 4
  store i32 %155, i32* %7, align 4
  br label %204

156:                                              ; preds = %150, %41
  store i32 1, i32* %14, align 4
  br label %157

157:                                              ; preds = %188, %156
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %191

161:                                              ; preds = %157
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @BUFFER_TRACE(i64 %167, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @ext3_journal_forget(%struct.TYPE_12__* %169, i64 %175)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %178 = load %struct.inode*, %struct.inode** %9, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @le32_to_cpu(i32 %185)
  %187 = call i32 @ext3_free_blocks(%struct.TYPE_12__* %177, %struct.inode* %178, i32 %186, i32 1)
  br label %188

188:                                              ; preds = %161
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  br label %157

191:                                              ; preds = %157
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %193 = load %struct.inode*, %struct.inode** %9, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @le32_to_cpu(i32 %199)
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @ext3_free_blocks(%struct.TYPE_12__* %192, %struct.inode* %193, i32 %200, i32 %201)
  %203 = load i32, i32* %15, align 4
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %191, %154
  %205 = load i32, i32* %7, align 4
  ret i32 %205
}

declare dso_local %struct.ext3_inode_info* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @BUFFER_TRACE(i64, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_equal(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @ext3_mark_inode_dirty(%struct.TYPE_12__*, %struct.inode*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @jbd_debug(i32, i8*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @ext3_journal_forget(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @ext3_free_blocks(%struct.TYPE_12__*, %struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
