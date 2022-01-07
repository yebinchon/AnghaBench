; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_trim_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_trim_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ocfs2_extent_list*, %struct.buffer_head* }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_truncate_context = type { i32 }
%struct.ocfs2_extent_block = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"traveling tree (index = %d, block = %llu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Inode %lu has invalid ext. block %llu\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Extent list before: record %d: (%u, %u, %llu), next = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"extent list container %llu, after: record %d: (%u, %u, %llu), next = %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"deleting this extent block.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_path*, i32*, %struct.ocfs2_truncate_context*, i32, i32*, i32*)* @ocfs2_trim_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_trim_tree(%struct.inode* %0, %struct.ocfs2_path* %1, i32* %2, %struct.ocfs2_truncate_context* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_truncate_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.ocfs2_extent_list*, align 8
  %22 = alloca %struct.ocfs2_extent_rec*, align 8
  %23 = alloca %struct.ocfs2_extent_block*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.ocfs2_truncate_context* %3, %struct.ocfs2_truncate_context** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %24 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %25 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %14, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %363, %7
  %30 = load i32, i32* %17, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %366

32:                                               ; preds = %29
  %33 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %34 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  store %struct.buffer_head* %40, %struct.buffer_head** %20, align 8
  %41 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %42 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %47, align 8
  store %struct.ocfs2_extent_list* %48, %struct.ocfs2_extent_list** %21, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %52)
  %54 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %63 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = sub nsw i32 %64, %68
  %70 = icmp ne i32 %61, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %32
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ocfs2_error(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %80)
  %82 = load i32, i32* @EROFS, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %15, align 4
  br label %367

84:                                               ; preds = %32
  br label %85

85:                                               ; preds = %177, %84
  %86 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %87 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  %91 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %92 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %91, i32 0, i32 0
  %93 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %92, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %93, i64 %95
  store %struct.ocfs2_extent_rec* %96, %struct.ocfs2_extent_rec** %22, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %99 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %103 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %104 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %102, %struct.ocfs2_extent_rec* %103)
  %105 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %106 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le64_to_cpu(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %111 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @le16_to_cpu(i32 %112)
  %114 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %101, i32 %104, i64 %109, i32 %113)
  %115 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %116 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %117 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %115, %struct.ocfs2_extent_rec* %116)
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @BUG_ON(i32 %120)
  %122 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %123 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le16_to_cpu(i32 %124)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %231

127:                                              ; preds = %85
  %128 = load i32, i32* %16, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %132 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %136 = call i32 @memset(%struct.ocfs2_extent_rec* %135, i32 0, i32 20)
  %137 = call i32 @cpu_to_le16(i32 0)
  %138 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %139 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %276

140:                                              ; preds = %130, %127
  %141 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %142 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %141, i32 0, i32 0
  %143 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %142, align 8
  %144 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %143, i64 0
  %145 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %140
  %148 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %149 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %148, i32 0, i32 1
  %150 = call i32 @le16_add_cpu(i32* %149, i32 -1)
  store i32 0, i32* %16, align 4
  br label %151

151:                                              ; preds = %174, %147
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %154 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @le16_to_cpu(i32 %155)
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %151
  %159 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %160 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %159, i32 0, i32 0
  %161 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %161, i64 %163
  %165 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %166 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %165, i32 0, i32 0
  %167 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %167, i64 %170
  %172 = bitcast %struct.ocfs2_extent_rec* %164 to i8*
  %173 = bitcast %struct.ocfs2_extent_rec* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 4 %173, i64 20, i1 false)
  br label %174

174:                                              ; preds = %158
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %16, align 4
  br label %151

177:                                              ; preds = %151
  %178 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %179 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %178, i32 0, i32 0
  %180 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %179, align 8
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %180, i64 %182
  %184 = call i32 @memset(%struct.ocfs2_extent_rec* %183, i32 0, i32 20)
  br label %85

185:                                              ; preds = %140
  %186 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %187 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %186, i32 0, i32 3
  %188 = load i32, i32* %12, align 4
  %189 = sub nsw i32 0, %188
  %190 = call i32 @le16_add_cpu(i32* %187, i32 %189)
  %191 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %192 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @le16_to_cpu(i32 %193)
  store i32 %194, i32* %18, align 4
  %195 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %196 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @le32_to_cpu(i32 %197)
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %18, align 4
  %201 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %202 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @le64_to_cpu(i32 %203)
  %205 = load %struct.inode*, %struct.inode** %8, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %209 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le16_to_cpu(i32 %210)
  %212 = call i32 @ocfs2_clusters_to_blocks(i32 %207, i32 %211)
  %213 = add nsw i32 %204, %212
  %214 = load i32*, i32** %13, align 8
  store i32 %213, i32* %214, align 4
  %215 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %216 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %14, align 8
  store i32 %217, i32* %218, align 4
  %219 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %220 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @le16_to_cpu(i32 %221)
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %185
  %225 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %226 = call i32 @memset(%struct.ocfs2_extent_rec* %225, i32 0, i32 20)
  %227 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %228 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %227, i32 0, i32 1
  %229 = call i32 @le16_add_cpu(i32* %228, i32 -1)
  br label %230

230:                                              ; preds = %224, %185
  br label %275

231:                                              ; preds = %85
  %232 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %233 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @le64_to_cpu(i32 %234)
  %236 = load i32, i32* %19, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %240 = call i32 @memset(%struct.ocfs2_extent_rec* %239, i32 0, i32 20)
  %241 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %242 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %241, i32 0, i32 1
  %243 = call i32 @le16_add_cpu(i32* %242, i32 -1)
  br label %276

244:                                              ; preds = %231
  %245 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %246 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @le16_to_cpu(i32 %247)
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  br label %276

251:                                              ; preds = %244
  %252 = load i32, i32* %18, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  br label %276

255:                                              ; preds = %251
  %256 = load i32, i32* %18, align 4
  %257 = call i32 @cpu_to_le32(i32 %256)
  %258 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %259 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 4
  %260 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %261 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %260, i32 0, i32 2
  %262 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %263 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @le32_to_cpu(i32 %264)
  %266 = sub nsw i32 0, %265
  %267 = call i32 @le32_add_cpu(i32* %261, i32 %266)
  %268 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %269 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @le32_to_cpu(i32 %270)
  %272 = icmp eq i32 %271, 0
  %273 = zext i1 %272 to i32
  %274 = call i32 @BUG_ON(i32 %273)
  br label %275

275:                                              ; preds = %255, %230
  br label %276

276:                                              ; preds = %275, %254, %250, %238, %134
  %277 = load i32*, i32** %10, align 8
  %278 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %279 = call i32 @ocfs2_journal_dirty(i32* %277, %struct.buffer_head* %278)
  store i32 %279, i32* %15, align 4
  %280 = load i32, i32* %15, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %276
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @mlog_errno(i32 %283)
  br label %367

285:                                              ; preds = %276
  %286 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %287 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i32, i32* %16, align 4
  %290 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %291 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @le32_to_cpu(i32 %292)
  %294 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %295 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %296 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %294, %struct.ocfs2_extent_rec* %295)
  %297 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %298 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @le64_to_cpu(i32 %299)
  %301 = sext i32 %300 to i64
  %302 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %303 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @le16_to_cpu(i32 %304)
  %306 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i64 %288, i32 %289, i32 %293, i32 %296, i64 %301, i32 %305)
  %307 = load i32, i32* %17, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %362

309:                                              ; preds = %285
  %310 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %311 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @le16_to_cpu(i32 %312)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %362

315:                                              ; preds = %309
  %316 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %317 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = inttoptr i64 %318 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %319, %struct.ocfs2_extent_block** %23, align 8
  %320 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %23, align 8
  %321 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @le64_to_cpu(i32 %322)
  store i32 %323, i32* %19, align 4
  %324 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %325 = load %struct.inode*, %struct.inode** %8, align 8
  %326 = call i32 @INODE_CACHE(%struct.inode* %325)
  %327 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %328 = call i32 @ocfs2_remove_from_cache(i32 %326, %struct.buffer_head* %327)
  %329 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %330 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %331 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %330, i32 0, i32 0
  %332 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %331, align 8
  %333 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %332, i64 0
  %334 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %329, %struct.ocfs2_extent_rec* %333)
  %335 = call i32 @BUG_ON(i32 %334)
  %336 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %337 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %336, i32 0, i32 0
  %338 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %337, align 8
  %339 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %338, i64 0
  %340 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @le32_to_cpu(i32 %341)
  %343 = call i32 @BUG_ON(i32 %342)
  %344 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %345 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %344, i32 0, i32 0
  %346 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %345, align 8
  %347 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %346, i64 0
  %348 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @le64_to_cpu(i32 %349)
  %351 = call i32 @BUG_ON(i32 %350)
  %352 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %11, align 8
  %353 = getelementptr inbounds %struct.ocfs2_truncate_context, %struct.ocfs2_truncate_context* %352, i32 0, i32 0
  %354 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %23, align 8
  %355 = call i32 @ocfs2_cache_extent_block_free(i32* %353, %struct.ocfs2_extent_block* %354)
  store i32 %355, i32* %15, align 4
  %356 = load i32, i32* %15, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %315
  %359 = load i32, i32* %15, align 4
  %360 = call i32 @mlog_errno(i32 %359)
  br label %361

361:                                              ; preds = %358, %315
  br label %363

362:                                              ; preds = %309, %285
  store i32 0, i32* %19, align 4
  br label %363

363:                                              ; preds = %362, %361
  %364 = load i32, i32* %17, align 4
  %365 = add nsw i32 %364, -1
  store i32 %365, i32* %17, align 4
  br label %29

366:                                              ; preds = %29
  store i32 0, i32* %15, align 4
  br label %367

367:                                              ; preds = %366, %282, %71
  %368 = load i32, i32* %15, align 4
  ret i32 %368
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_remove_from_cache(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_cache_extent_block_free(i32*, %struct.ocfs2_extent_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
