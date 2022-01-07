; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_calc_refcount_meta_credits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_calc_refcount_meta_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_block = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ocfs2_refcount_rec = type { i64, i32, i64 }
%struct.ocfs2_extent_tree = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"start_cpos %llu, clusters %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"recs_add %d,cpos %llu, clusters %u, rec->r_cpos %llu,rec->r_clusters %u, rec->r_refcount %u, index %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"we need ref_blocks %d\0A\00", align 1
@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_EXPAND_REFCOUNT_TREE_CREDITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i64, i32*, i32*)* @ocfs2_calc_refcount_meta_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_calc_refcount_meta_credits(%struct.super_block* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ocfs2_caching_info*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.ocfs2_refcount_block*, align 8
  %21 = alloca %struct.ocfs2_refcount_rec, align 8
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %19, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %27 = load i64, i64* %11, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %12, align 8
  %30 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %153, %7
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %162

34:                                               ; preds = %31
  %35 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %37 = load i64, i64* %19, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %35, %struct.buffer_head* %36, i64 %37, i64 %38, %struct.ocfs2_refcount_rec* %21, i32* %16, %struct.buffer_head** %22)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %250

45:                                               ; preds = %34
  %46 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %48 = icmp ne %struct.buffer_head* %46, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %45
  %50 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %51 = icmp ne %struct.buffer_head* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %56, %struct.ocfs2_refcount_block** %20, align 8
  %57 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %58 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le64_to_cpu(i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %66 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @le16_to_cpu(i32 %68)
  %70 = icmp sgt i64 %64, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %71, %52
  br label %75

75:                                               ; preds = %74, %49
  store i32 0, i32* %18, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* %81, %struct.buffer_head** %23, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %83 = call i32 @get_bh(%struct.buffer_head* %82)
  br label %84

84:                                               ; preds = %75, %45
  %85 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %88, %struct.ocfs2_refcount_block** %20, align 8
  %89 = load i32, i32* %18, align 4
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @le64_to_cpu(i32 %93)
  %95 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le32_to_cpu(i64 %96)
  %98 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @le32_to_cpu(i64 %99)
  %101 = load i32, i32* %16, align 4
  %102 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 %89, i64 %90, i64 %91, i64 %94, i32 %97, i32 %100, i32 %101)
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add nsw i64 %103, %104
  %106 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @le64_to_cpu(i32 %107)
  %109 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @le32_to_cpu(i64 %110)
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  %114 = call i64 @min(i64 %105, i64 %113)
  %115 = load i64, i64* %19, align 8
  %116 = sub nsw i64 %114, %115
  store i64 %116, i64* %24, align 8
  %117 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %84
  %121 = load i64, i64* %19, align 8
  %122 = load i64, i64* %11, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i64, i64* %19, align 8
  %126 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @le64_to_cpu(i32 %127)
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %130, %124, %120
  %134 = load i64, i64* %19, align 8
  %135 = load i64, i64* %12, align 8
  %136 = add nsw i64 %134, %135
  %137 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @le64_to_cpu(i32 %138)
  %140 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @le32_to_cpu(i64 %141)
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %139, %143
  %145 = icmp slt i64 %136, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %133
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %18, align 4
  br label %149

149:                                              ; preds = %146, %133
  br label %153

150:                                              ; preds = %84
  %151 = load i32, i32* %18, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %150, %149
  %154 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %155 = call i32 @brelse(%struct.buffer_head* %154)
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  %156 = load i64, i64* %24, align 8
  %157 = load i64, i64* %12, align 8
  %158 = sub nsw i64 %157, %156
  store i64 %158, i64* %12, align 8
  %159 = load i64, i64* %24, align 8
  %160 = load i64, i64* %19, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %19, align 8
  br label %31

162:                                              ; preds = %31
  %163 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %164 = icmp ne %struct.buffer_head* %163, null
  br i1 %164, label %165, label %191

165:                                              ; preds = %162
  %166 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %167 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %169, %struct.ocfs2_refcount_block** %20, align 8
  %170 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %171 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @le64_to_cpu(i32 %173)
  %175 = load i32, i32* %18, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  %178 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %179 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @le16_to_cpu(i32 %181)
  %183 = icmp sgt i64 %177, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %165
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  br label %187

187:                                              ; preds = %184, %165
  %188 = load i32*, i32** %14, align 8
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %187, %162
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  br label %250

195:                                              ; preds = %191
  %196 = load i32, i32* %17, align 4
  %197 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %17, align 4
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %198
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32*, i32** %14, align 8
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, %202
  store i32 %205, i32* %203, align 4
  %206 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %207 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %209, %struct.ocfs2_refcount_block** %20, align 8
  %210 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %211 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @le32_to_cpu(i64 %212)
  %214 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %195
  %218 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %219 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %220 = call i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree* %25, %struct.ocfs2_caching_info* %218, %struct.buffer_head* %219)
  %221 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %25, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @ocfs2_extend_meta_needed(i32 %222)
  %224 = load i32*, i32** %13, align 8
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %223
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  %229 = load %struct.super_block*, %struct.super_block** %8, align 8
  %230 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %25, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %17, align 4
  %233 = call i64 @ocfs2_calc_extend_credits(%struct.super_block* %229, i32 %231, i32 %232)
  %234 = load i32*, i32** %14, align 8
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %233
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %234, align 4
  br label %249

239:                                              ; preds = %195
  %240 = load i64, i64* @OCFS2_EXPAND_REFCOUNT_TREE_CREDITS, align 8
  %241 = load i32*, i32** %14, align 8
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %240
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %241, align 4
  %246 = load i32*, i32** %13, align 8
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %239, %217
  br label %250

250:                                              ; preds = %249, %194, %42
  %251 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %252 = call i32 @brelse(%struct.buffer_head* %251)
  %253 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %254 = call i32 @brelse(%struct.buffer_head* %253)
  %255 = load i32, i32* %15, align 4
  ret i32 %255
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i64, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i64 @ocfs2_calc_extend_credits(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
