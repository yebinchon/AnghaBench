; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_add_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_add_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.buffer_head*, i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { i8*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_extent_block = type { i8*, i32, %struct.ocfs2_extent_list }

@.str = private unnamed_addr constant [38 x i8] c"adjust the cluster end from %u to %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.buffer_head*, %struct.buffer_head**, %struct.ocfs2_alloc_context*)* @ocfs2_add_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_branch(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.buffer_head* %2, %struct.buffer_head** %3, %struct.ocfs2_alloc_context* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.buffer_head**, align 8
  %18 = alloca %struct.ocfs2_extent_block*, align 8
  %19 = alloca %struct.ocfs2_extent_list*, align 8
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %10, align 8
  store %struct.buffer_head** null, %struct.buffer_head*** %17, align 8
  %23 = call i32 (...) @mlog_entry_void()
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %25 = icmp ne %struct.buffer_head** %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %5
  %32 = phi i1 [ true, %5 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %41, %struct.ocfs2_extent_block** %18, align 8
  %42 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %42, i32 0, i32 2
  store %struct.ocfs2_extent_list* %43, %struct.ocfs2_extent_list** %20, align 8
  br label %48

44:                                               ; preds = %31
  %45 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %45, i32 0, i32 2
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %46, align 8
  store %struct.ocfs2_extent_list* %47, %struct.ocfs2_extent_list** %20, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @le16_to_cpu(i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %64, %struct.ocfs2_extent_block** %18, align 8
  %65 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %65, i32 0, i32 2
  %67 = call i64 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list* %66)
  store i64 %67, i64* %21, align 8
  %68 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %68, i32 0, i32 2
  %70 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %69, align 8
  %71 = call i64 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list* %70)
  store i64 %71, i64* %22, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %21, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %48
  %76 = load i64, i64* %22, align 8
  %77 = load i64, i64* %21, align 8
  %78 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %81 = call i32 @ocfs2_adjust_rightmost_branch(i32* %79, %struct.ocfs2_extent_tree* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %333

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %48
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.buffer_head** @kcalloc(i32 %89, i32 8, i32 %90)
  store %struct.buffer_head** %91, %struct.buffer_head*** %17, align 8
  %92 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %93 = icmp ne %struct.buffer_head** %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %333

99:                                               ; preds = %88
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %104 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %105 = call i32 @ocfs2_create_new_meta_bhs(i32* %100, %struct.ocfs2_extent_tree* %101, i32 %102, %struct.ocfs2_alloc_context* %103, %struct.buffer_head** %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %333

111:                                              ; preds = %99
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %199, %111
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %202

116:                                              ; preds = %112
  %117 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %117, i64 %119
  %121 = load %struct.buffer_head*, %struct.buffer_head** %120, align 8
  store %struct.buffer_head* %121, %struct.buffer_head** %16, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %125, %struct.ocfs2_extent_block** %18, align 8
  %126 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %127 = call i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block* %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  %132 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %133 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %132, i32 0, i32 2
  store %struct.ocfs2_extent_list* %133, %struct.ocfs2_extent_list** %19, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %136 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %139 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %140 = call i32 @ocfs2_journal_access_eb(i32* %134, i32 %137, %struct.buffer_head* %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %116
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @mlog_errno(i32 %144)
  br label %333

146:                                              ; preds = %116
  %147 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %148 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %147, i32 0, i32 0
  store i8* null, i8** %148, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i8* @cpu_to_le16(i32 %149)
  %151 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %152 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = call i8* @cpu_to_le16(i32 1)
  %154 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %155 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load i64, i64* %21, align 8
  %157 = call i8* @cpu_to_le32(i64 %156)
  %158 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %159 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i8* %157, i8** %162, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i8* @cpu_to_le64(i64 %163)
  %165 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %166 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  store i8* %164, i8** %169, align 8
  %170 = call i8* @cpu_to_le32(i64 0)
  %171 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %172 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i8* %170, i8** %175, align 8
  %176 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %177 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %146
  %181 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %182 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @le64_to_cpu(i32 %183)
  store i64 %184, i64* %15, align 8
  br label %185

185:                                              ; preds = %180, %146
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %188 = call i32 @ocfs2_journal_dirty(i32* %186, %struct.buffer_head* %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @mlog_errno(i32 %192)
  br label %333

194:                                              ; preds = %185
  %195 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %196 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @le64_to_cpu(i32 %197)
  store i64 %198, i64* %14, align 8
  br label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %13, align 4
  br label %112

202:                                              ; preds = %112
  %203 = load i32*, i32** %6, align 8
  %204 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %205 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %208 = load %struct.buffer_head*, %struct.buffer_head** %207, align 8
  %209 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %210 = call i32 @ocfs2_journal_access_eb(i32* %203, i32 %206, %struct.buffer_head* %208, i32 %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %202
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @mlog_errno(i32 %214)
  br label %333

216:                                              ; preds = %202
  %217 = load i32*, i32** %6, align 8
  %218 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %219 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %220 = call i32 @ocfs2_et_root_journal_access(i32* %217, %struct.ocfs2_extent_tree* %218, i32 %219)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @mlog_errno(i32 %224)
  br label %333

226:                                              ; preds = %216
  %227 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %228 = icmp ne %struct.buffer_head* %227, null
  br i1 %228, label %229, label %243

229:                                              ; preds = %226
  %230 = load i32*, i32** %6, align 8
  %231 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %232 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %235 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %236 = call i32 @ocfs2_journal_access_eb(i32* %230, i32 %233, %struct.buffer_head* %234, i32 %235)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @mlog_errno(i32 %240)
  br label %333

242:                                              ; preds = %229
  br label %243

243:                                              ; preds = %242, %226
  %244 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %245 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @le16_to_cpu(i8* %246)
  store i32 %247, i32* %13, align 4
  %248 = load i64, i64* %14, align 8
  %249 = call i8* @cpu_to_le64(i64 %248)
  %250 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %251 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %250, i32 0, i32 1
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 2
  store i8* %249, i8** %256, align 8
  %257 = load i64, i64* %21, align 8
  %258 = call i8* @cpu_to_le32(i64 %257)
  %259 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %260 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %259, i32 0, i32 1
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  store i8* %258, i8** %265, align 8
  %266 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %267 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %266, i32 0, i32 1
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 0
  store i8* null, i8** %272, align 8
  %273 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %274 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %273, i32 0, i32 0
  %275 = call i32 @le16_add_cpu(i8** %274, i32 1)
  %276 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %277 = load i64, i64* %15, align 8
  %278 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %276, i64 %277)
  %279 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %280 = load %struct.buffer_head*, %struct.buffer_head** %279, align 8
  %281 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %283, %struct.ocfs2_extent_block** %18, align 8
  %284 = load i64, i64* %15, align 8
  %285 = call i8* @cpu_to_le64(i64 %284)
  %286 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %287 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %286, i32 0, i32 0
  store i8* %285, i8** %287, align 8
  %288 = load i32*, i32** %6, align 8
  %289 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %290 = load %struct.buffer_head*, %struct.buffer_head** %289, align 8
  %291 = call i32 @ocfs2_journal_dirty(i32* %288, %struct.buffer_head* %290)
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %243
  %295 = load i32, i32* %11, align 4
  %296 = call i32 @mlog_errno(i32 %295)
  br label %297

297:                                              ; preds = %294, %243
  %298 = load i32*, i32** %6, align 8
  %299 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %300 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %299, i32 0, i32 0
  %301 = load %struct.buffer_head*, %struct.buffer_head** %300, align 8
  %302 = call i32 @ocfs2_journal_dirty(i32* %298, %struct.buffer_head* %301)
  store i32 %302, i32* %11, align 4
  %303 = load i32, i32* %11, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %297
  %306 = load i32, i32* %11, align 4
  %307 = call i32 @mlog_errno(i32 %306)
  br label %308

308:                                              ; preds = %305, %297
  %309 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %310 = icmp ne %struct.buffer_head* %309, null
  br i1 %310, label %311, label %321

311:                                              ; preds = %308
  %312 = load i32*, i32** %6, align 8
  %313 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %314 = call i32 @ocfs2_journal_dirty(i32* %312, %struct.buffer_head* %313)
  store i32 %314, i32* %11, align 4
  %315 = load i32, i32* %11, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load i32, i32* %11, align 4
  %319 = call i32 @mlog_errno(i32 %318)
  br label %320

320:                                              ; preds = %317, %311
  br label %321

321:                                              ; preds = %320, %308
  %322 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %323 = load %struct.buffer_head*, %struct.buffer_head** %322, align 8
  %324 = call i32 @brelse(%struct.buffer_head* %323)
  %325 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %326 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %325, i64 0
  %327 = load %struct.buffer_head*, %struct.buffer_head** %326, align 8
  %328 = call i32 @get_bh(%struct.buffer_head* %327)
  %329 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %330 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %329, i64 0
  %331 = load %struct.buffer_head*, %struct.buffer_head** %330, align 8
  %332 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %331, %struct.buffer_head** %332, align 8
  store i32 0, i32* %11, align 4
  br label %333

333:                                              ; preds = %321, %239, %223, %213, %191, %143, %108, %94, %84
  %334 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %335 = icmp ne %struct.buffer_head** %334, null
  br i1 %335, label %336, label %354

336:                                              ; preds = %333
  store i32 0, i32* %13, align 4
  br label %337

337:                                              ; preds = %348, %336
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* %12, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %351

341:                                              ; preds = %337
  %342 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %342, i64 %344
  %346 = load %struct.buffer_head*, %struct.buffer_head** %345, align 8
  %347 = call i32 @brelse(%struct.buffer_head* %346)
  br label %348

348:                                              ; preds = %341
  %349 = load i32, i32* %13, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %13, align 4
  br label %337

351:                                              ; preds = %337
  %352 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %353 = call i32 @kfree(%struct.buffer_head** %352)
  br label %354

354:                                              ; preds = %351, %333
  %355 = load i32, i32* %11, align 4
  %356 = call i32 @mlog_exit(i32 %355)
  %357 = load i32, i32* %11, align 4
  ret i32 %357
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i64 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_adjust_rightmost_branch(i32*, %struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.buffer_head** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ocfs2_create_new_meta_bhs(i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block*) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @le16_add_cpu(i8**, i32) #1

declare dso_local i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
