; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_split_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_split_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_refcount_rec = type { i64, i32, i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_refcount_block = type { i32, %struct.ocfs2_refcount_list }
%struct.ocfs2_refcount_list = type { i32, %struct.ocfs2_refcount_rec*, i32 }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"original r_pos %llu, cluster %u, split %llu, cluster %u\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"insert refcount record start %llu, len %u, count %u to leaf block %llu at index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_split_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_split_refcount_rec(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.ocfs2_refcount_rec* %4, i32 %5, i32 %6, %struct.ocfs2_alloc_context* %7, %struct.ocfs2_cached_dealloc_ctxt* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_caching_info*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_refcount_rec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ocfs2_refcount_block*, align 8
  %23 = alloca %struct.ocfs2_refcount_list*, align 8
  %24 = alloca %struct.ocfs2_refcount_rec*, align 8
  %25 = alloca %struct.ocfs2_refcount_rec*, align 8
  %26 = alloca %struct.buffer_head*, align 8
  %27 = alloca %struct.ocfs2_refcount_rec, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %11, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store %struct.ocfs2_refcount_rec* %4, %struct.ocfs2_refcount_rec** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %8, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %32, %struct.ocfs2_refcount_block** %22, align 8
  %33 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %22, align 8
  %34 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %33, i32 0, i32 1
  store %struct.ocfs2_refcount_list* %34, %struct.ocfs2_refcount_list** %23, align 8
  %35 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %36 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %35, i32 0, i32 1
  %37 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %37, i64 %39
  store %struct.ocfs2_refcount_rec* %40, %struct.ocfs2_refcount_rec** %24, align 8
  store %struct.ocfs2_refcount_rec* null, %struct.ocfs2_refcount_rec** %25, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %26, align 8
  %41 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %22, align 8
  %42 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %49 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @le64_to_cpu(i64 %50)
  %52 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %53 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %57 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @le64_to_cpu(i64 %58)
  %60 = trunc i64 %59 to i32
  %61 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %62 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = sext i32 %64 to i64
  %66 = call i32 (i32, i8*, i64, i32, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %55, i32 %60, i64 %65)
  %67 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %68 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %9
  %72 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %73 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %76 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %101, label %79

79:                                               ; preds = %71
  %80 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %81 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @le64_to_cpu(i64 %82)
  %84 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %85 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %83, %88
  %90 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %91 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @le64_to_cpu(i64 %92)
  %94 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %95 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %93, %98
  %100 = icmp eq i64 %89, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %79, %71
  store i32 0, i32* %20, align 4
  br label %103

102:                                              ; preds = %79, %9
  store i32 1, i32* %20, align 4
  br label %103

103:                                              ; preds = %102, %101
  %104 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %105 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %141

108:                                              ; preds = %103
  %109 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %110 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %113 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %108
  %117 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %118 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @le64_to_cpu(i64 %119)
  %121 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %122 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %120, %125
  %127 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %128 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @le64_to_cpu(i64 %129)
  %131 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %132 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %130, %135
  %137 = icmp ne i64 %126, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %116
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %20, align 4
  br label %141

141:                                              ; preds = %138, %116, %108, %103
  %142 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %143 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @le16_to_cpu(i32 %144)
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %145, %146
  %148 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %149 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %147, %150
  br i1 %151, label %152, label %197

152:                                              ; preds = %141
  %153 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %154 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @le64_to_cpu(i64 %155)
  store i64 %156, i64* %28, align 8
  %157 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %158 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @le32_to_cpu(i32 %159)
  store i32 %160, i32* %21, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %165 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %166 = call i32 @ocfs2_expand_refcount_tree(i32* %161, %struct.ocfs2_caching_info* %162, %struct.buffer_head* %163, %struct.buffer_head* %164, %struct.ocfs2_alloc_context* %165)
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %152
  %170 = load i32, i32* %19, align 4
  %171 = call i32 @mlog_errno(i32 %170)
  br label %376

172:                                              ; preds = %152
  %173 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %174 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %175 = load i64, i64* %28, align 8
  %176 = load i32, i32* %21, align 4
  %177 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %173, %struct.buffer_head* %174, i64 %175, i32 %176, %struct.ocfs2_refcount_rec* %27, i32* %15, %struct.buffer_head** %26)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load i32, i32* %19, align 4
  %182 = call i32 @mlog_errno(i32 %181)
  br label %376

183:                                              ; preds = %172
  %184 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  store %struct.buffer_head* %184, %struct.buffer_head** %13, align 8
  %185 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %186 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %188, %struct.ocfs2_refcount_block** %22, align 8
  %189 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %22, align 8
  %190 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %189, i32 0, i32 1
  store %struct.ocfs2_refcount_list* %190, %struct.ocfs2_refcount_list** %23, align 8
  %191 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %192 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %191, i32 0, i32 1
  %193 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %192, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %193, i64 %195
  store %struct.ocfs2_refcount_rec* %196, %struct.ocfs2_refcount_rec** %24, align 8
  br label %197

197:                                              ; preds = %183, %141
  %198 = load i32*, i32** %10, align 8
  %199 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %200 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %201 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %202 = call i32 @ocfs2_journal_access_rb(i32* %198, %struct.ocfs2_caching_info* %199, %struct.buffer_head* %200, i32 %201)
  store i32 %202, i32* %19, align 4
  %203 = load i32, i32* %19, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %197
  %206 = load i32, i32* %19, align 4
  %207 = call i32 @mlog_errno(i32 %206)
  br label %376

208:                                              ; preds = %197
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %211 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @le16_to_cpu(i32 %212)
  %214 = sub nsw i32 %213, 1
  %215 = icmp ne i32 %209, %214
  br i1 %215, label %216, label %244

216:                                              ; preds = %208
  %217 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %218 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %217, i32 0, i32 1
  %219 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %220, 1
  %222 = load i32, i32* %20, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %219, i64 %224
  %226 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %227 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %226, i32 0, i32 1
  %228 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %228, i64 %231
  %233 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %234 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @le16_to_cpu(i32 %235)
  %237 = load i32, i32* %15, align 4
  %238 = sub nsw i32 %236, %237
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 16
  %242 = trunc i64 %241 to i32
  %243 = call i32 @memmove(%struct.ocfs2_refcount_rec* %225, %struct.ocfs2_refcount_rec* %232, i32 %242)
  br label %244

244:                                              ; preds = %216, %208
  %245 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %246 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @le64_to_cpu(i64 %247)
  %249 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %250 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @le32_to_cpu(i32 %251)
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %248, %253
  %255 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %256 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @le64_to_cpu(i64 %257)
  %259 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %260 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @le32_to_cpu(i32 %261)
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %258, %263
  %265 = sub nsw i64 %254, %264
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %244
  %270 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %271 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %270, i32 0, i32 1
  %272 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %271, align 8
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* %20, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %272, i64 %276
  store %struct.ocfs2_refcount_rec* %277, %struct.ocfs2_refcount_rec** %25, align 8
  %278 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %279 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %280 = call i32 @memcpy(%struct.ocfs2_refcount_rec* %278, %struct.ocfs2_refcount_rec* %279, i32 16)
  %281 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %282 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %281, i32 0, i32 0
  %283 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %284 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @le32_to_cpu(i32 %285)
  %287 = load i32, i32* %21, align 4
  %288 = sub nsw i32 %286, %287
  %289 = call i32 @le64_add_cpu(i64* %282, i32 %288)
  %290 = load i32, i32* %21, align 4
  %291 = call i32 @le32_to_cpu(i32 %290)
  %292 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %293 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %269, %244
  %295 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %296 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %299 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %297, %300
  br i1 %301, label %302, label %323

302:                                              ; preds = %294
  %303 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %304 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %305 = icmp ne %struct.ocfs2_refcount_rec* %303, %304
  br i1 %305, label %306, label %323

306:                                              ; preds = %302
  %307 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %308 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = call i64 @le64_to_cpu(i64 %309)
  %311 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %312 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = call i64 @le64_to_cpu(i64 %313)
  %315 = sub nsw i64 %310, %314
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %21, align 4
  %317 = load i32, i32* %21, align 4
  %318 = call i32 @cpu_to_le32(i32 %317)
  %319 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %320 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 8
  %321 = load i32, i32* %15, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %15, align 4
  br label %323

323:                                              ; preds = %306, %302, %294
  %324 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %325 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %324, i32 0, i32 2
  %326 = load i32, i32* %20, align 4
  %327 = call i32 @le16_add_cpu(i32* %325, i32 %326)
  %328 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %329 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %366

332:                                              ; preds = %323
  %333 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %334 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %333, i32 0, i32 1
  %335 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %334, align 8
  %336 = load i32, i32* %15, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %335, i64 %337
  %339 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %340 = bitcast %struct.ocfs2_refcount_rec* %338 to i8*
  %341 = bitcast %struct.ocfs2_refcount_rec* %339 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %340, i8* align 8 %341, i64 16, i1 false)
  %342 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %343 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = call i64 @le64_to_cpu(i64 %344)
  %346 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %347 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @le32_to_cpu(i32 %348)
  %350 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %351 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @le32_to_cpu(i32 %352)
  %354 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %355 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* %15, align 4
  %358 = call i32 (i32, i8*, i64, i32, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %345, i32 %349, i32 %353, i64 %356, i32 %357)
  %359 = load i32, i32* %16, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %332
  %362 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %22, align 8
  %363 = load i32, i32* %15, align 4
  %364 = call i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block* %362, i32 %363)
  br label %365

365:                                              ; preds = %361, %332
  br label %366

366:                                              ; preds = %365, %323
  %367 = load i32*, i32** %10, align 8
  %368 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %369 = call i32 @ocfs2_journal_dirty(i32* %367, %struct.buffer_head* %368)
  store i32 %369, i32* %19, align 4
  %370 = load i32, i32* %19, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %366
  %373 = load i32, i32* %19, align 4
  %374 = call i32 @mlog_errno(i32 %373)
  br label %375

375:                                              ; preds = %372, %366
  br label %376

376:                                              ; preds = %375, %205, %180, %169
  %377 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %378 = call i32 @brelse(%struct.buffer_head* %377)
  %379 = load i32, i32* %19, align 4
  ret i32 %379
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32, i64, ...) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_expand_refcount_tree(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memmove(%struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec*, i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec*, i32) #1

declare dso_local i32 @le64_add_cpu(i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
