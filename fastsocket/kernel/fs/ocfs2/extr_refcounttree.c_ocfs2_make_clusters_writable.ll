; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_make_clusters_writable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_make_clusters_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_cow_context = type { i64, i32*, i32*, %struct.TYPE_4__*, i32, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32)*, i32, i64 }
%struct.TYPE_3__ = type { %struct.ocfs2_caching_info }
%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_refcount_rec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"cpos %u, p_cluster %u, num_clusters %u, e_flags %u\0A\00", align 1
@ocfs2_di_get_clusters = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_cow_context*, i32, i32, i32, i32)* @ocfs2_make_clusters_writable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_make_clusters_writable(%struct.super_block* %0, %struct.ocfs2_cow_context* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ocfs2_cow_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ocfs2_super*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca %struct.ocfs2_caching_info*, align 8
  %25 = alloca %struct.ocfs2_refcount_rec, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.ocfs2_cow_context* %1, %struct.ocfs2_cow_context** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.super_block*, %struct.super_block** %8, align 8
  %27 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %21, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %28 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %29 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %28, i32 0, i32 9
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.ocfs2_caching_info* %31, %struct.ocfs2_caching_info** %24, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.super_block*, %struct.super_block** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %41 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %40, i32 0, i32 7
  %42 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %24, align 8
  %43 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %44 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %47 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %46, i32 0, i32 1
  %48 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %49 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %48, i32 0, i32 2
  %50 = call i32 @ocfs2_lock_refcount_allocators(%struct.super_block* %37, i32 %38, i32 %39, i32* %41, %struct.ocfs2_caching_info* %42, i32 %45, i32** %47, i32** %49, i32* %17)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %6
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %7, align 4
  br label %299

57:                                               ; preds = %6
  %58 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %59 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %64 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %62, %57
  %73 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %74 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %17, align 4
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %80, i32 %81)
  store i32* %82, i32** %22, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = call i64 @IS_ERR(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load i32*, i32** %22, align 8
  %88 = call i32 @PTR_ERR(i32* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %271

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %202, %91
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %214

95:                                               ; preds = %92
  %96 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %24, align 8
  %97 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %98 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %96, i32 %99, i32 %100, i32 %101, %struct.ocfs2_refcount_rec* %25, i32* %16, %struct.buffer_head** %23)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %267

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %25, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUG_ON(i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add i32 %115, %116
  %118 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %25, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @le64_to_cpu(i32 %119)
  %121 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %25, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %120, %124
  %126 = call i32 @min(i32 %117, i64 %125)
  %127 = load i32, i32* %11, align 4
  %128 = sub i32 %126, %127
  store i32 %128, i32* %20, align 4
  %129 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %25, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %153

133:                                              ; preds = %108
  store i32 0, i32* %15, align 4
  %134 = load i32*, i32** %22, align 8
  %135 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %136 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %135, i32 0, i32 7
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %142 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %145 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %144, i32 0, i32 5
  %146 = call i32 @ocfs2_clear_ext_refcount(i32* %134, i32* %136, i32 %137, i32 %138, i32 %139, i32 %140, i32* %143, i32* %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %133
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @mlog_errno(i32 %150)
  br label %267

152:                                              ; preds = %133
  br label %182

153:                                              ; preds = %108
  store i32 1, i32* %15, align 4
  %154 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %155 = load i32*, i32** %22, align 8
  %156 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %157 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %20, align 4
  %160 = call i32 @__ocfs2_claim_clusters(%struct.ocfs2_super* %154, i32* %155, i32* %158, i32 1, i32 %159, i32* %18, i32* %19)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @mlog_errno(i32 %164)
  br label %267

166:                                              ; preds = %153
  %167 = load i32*, i32** %22, align 8
  %168 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @ocfs2_replace_clusters(i32* %167, %struct.ocfs2_cow_context* %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %166
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @mlog_errno(i32 %178)
  br label %267

180:                                              ; preds = %166
  %181 = load i32, i32* %19, align 4
  store i32 %181, i32* %20, align 4
  br label %182

182:                                              ; preds = %180, %152
  %183 = load i32*, i32** %22, align 8
  %184 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %24, align 8
  %185 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %186 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %20, align 4
  %190 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %191 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %194 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %193, i32 0, i32 5
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @__ocfs2_decrease_refcount(i32* %183, %struct.ocfs2_caching_info* %184, i32 %187, i32 %188, i32 %189, i32* %192, i32* %194, i32 %195)
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %182
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @mlog_errno(i32 %200)
  br label %267

202:                                              ; preds = %182
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %10, align 4
  %205 = add i32 %204, %203
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %11, align 4
  %208 = add i32 %207, %206
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %12, align 4
  %211 = sub i32 %210, %209
  store i32 %211, i32* %12, align 4
  %212 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %213 = call i32 @brelse(%struct.buffer_head* %212)
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  br label %92

214:                                              ; preds = %92
  %215 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %216 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %215, i32 0, i32 3
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = icmp ne %struct.TYPE_4__* %217, null
  br i1 %218, label %219, label %248

219:                                              ; preds = %214
  %220 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %221 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %220, i32 0, i32 3
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %223, align 8
  %225 = icmp ne i32 (i32, i32*, i32)* %224, null
  br i1 %225, label %226, label %248

226:                                              ; preds = %219
  %227 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %228 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %227, i32 0, i32 3
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %230, align 8
  %232 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %233 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = load i32*, i32** %22, align 8
  %236 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %237 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %236, i32 0, i32 3
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 %231(i32 %234, i32* %235, i32 %240)
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* %14, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %226
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @mlog_errno(i32 %245)
  br label %267

247:                                              ; preds = %226
  br label %248

248:                                              ; preds = %247, %219, %214
  %249 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %250 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @ocfs2_di_get_clusters, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %266

254:                                              ; preds = %248
  %255 = load %struct.super_block*, %struct.super_block** %8, align 8
  %256 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @ocfs2_cow_sync_writeback(%struct.super_block* %255, %struct.ocfs2_cow_context* %256, i32 %257, i32 %258)
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %254
  %263 = load i32, i32* %14, align 4
  %264 = call i32 @mlog_errno(i32 %263)
  br label %265

265:                                              ; preds = %262, %254
  br label %266

266:                                              ; preds = %265, %248
  br label %267

267:                                              ; preds = %266, %244, %199, %177, %163, %149, %105
  %268 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %269 = load i32*, i32** %22, align 8
  %270 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %268, i32* %269)
  br label %271

271:                                              ; preds = %267, %86
  %272 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %273 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %283

276:                                              ; preds = %271
  %277 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %278 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @ocfs2_free_alloc_context(i32* %279)
  %281 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %282 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %281, i32 0, i32 2
  store i32* null, i32** %282, align 8
  br label %283

283:                                              ; preds = %276, %271
  %284 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %285 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = icmp ne i32* %286, null
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %290 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @ocfs2_free_alloc_context(i32* %291)
  %293 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %294 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %293, i32 0, i32 1
  store i32* null, i32** %294, align 8
  br label %295

295:                                              ; preds = %288, %283
  %296 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %297 = call i32 @brelse(%struct.buffer_head* %296)
  %298 = load i32, i32* %14, align 4
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %295, %53
  %300 = load i32, i32* %7, align 4
  ret i32 %300
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lock_refcount_allocators(%struct.super_block*, i32, i32, i32*, %struct.ocfs2_caching_info*, i32, i32**, i32**, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, i32, i32, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_clear_ext_refcount(i32*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @__ocfs2_claim_clusters(%struct.ocfs2_super*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_replace_clusters(i32*, %struct.ocfs2_cow_context*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__ocfs2_decrease_refcount(i32*, %struct.ocfs2_caching_info*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_cow_sync_writeback(%struct.super_block*, %struct.ocfs2_cow_context*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
