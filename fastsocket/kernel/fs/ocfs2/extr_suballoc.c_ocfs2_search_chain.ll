; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_search_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_search_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i64, i32 (%struct.inode*, %struct.buffer_head*, i64, i64, i32, i64*, i64*)*, %struct.TYPE_13__*, i64, i32, %struct.inode.0* }
%struct.inode = type opaque
%struct.buffer_head = type opaque
%struct.TYPE_13__ = type { i64 }
%struct.inode.0 = type { i32 }
%struct.buffer_head.1 = type { i64 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ocfs2_chain_list = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ocfs2_group_desc = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"trying to alloc %u bits from chain %u, inode %llu\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"alloc succeeds: we give %u bits from block group %llu\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Allocated %u bits from suballocator %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_alloc_context*, i32*, i64, i64, i64*, i32*, i64*, i64*)* @ocfs2_search_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_search_chain(%struct.ocfs2_alloc_context* %0, i32* %1, i64 %2, i64 %3, i64* %4, i32* %5, i64* %6, i64* %7) #0 {
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.inode.0*, align 8
  %23 = alloca %struct.buffer_head.1*, align 8
  %24 = alloca %struct.buffer_head.1*, align 8
  %25 = alloca %struct.ocfs2_dinode*, align 8
  %26 = alloca %struct.ocfs2_chain_list*, align 8
  %27 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.ocfs2_alloc_context* %0, %struct.ocfs2_alloc_context** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  %28 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %29 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %28, i32 0, i32 5
  %30 = load %struct.inode.0*, %struct.inode.0** %29, align 8
  store %struct.inode.0* %30, %struct.inode.0** %22, align 8
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %23, align 8
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %24, align 8
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %32 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %31, i32 0, i32 2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %36, %struct.ocfs2_dinode** %25, align 8
  %37 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %25, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = bitcast i32* %39 to %struct.ocfs2_chain_list*
  store %struct.ocfs2_chain_list* %40, %struct.ocfs2_chain_list** %26, align 8
  %41 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %42 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %11, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, i64* %18, align 8
  %47 = load %struct.inode.0*, %struct.inode.0** %22, align 8
  %48 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode.0* %47)
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %46, i64 %50)
  %52 = load %struct.inode.0*, %struct.inode.0** %22, align 8
  %53 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %25, align 8
  %54 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %26, align 8
  %55 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i64, i64* %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le64_to_cpu(i32 %60)
  %62 = call i32 @ocfs2_read_group_descriptor(%struct.inode.0* %52, %struct.ocfs2_dinode* %53, i64 %61, %struct.buffer_head.1** %23)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %8
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %262

68:                                               ; preds = %8
  %69 = load %struct.buffer_head.1*, %struct.buffer_head.1** %23, align 8
  %70 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %72, %struct.ocfs2_group_desc** %27, align 8
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %116, %68
  %76 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %77 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %76, i32 0, i32 1
  %78 = load i32 (%struct.inode*, %struct.buffer_head*, i64, i64, i32, i64*, i64*)*, i32 (%struct.inode*, %struct.buffer_head*, i64, i64, i32, i64*, i64*)** %77, align 8
  %79 = load %struct.inode.0*, %struct.inode.0** %22, align 8
  %80 = bitcast %struct.inode.0* %79 to %struct.inode*
  %81 = load %struct.buffer_head.1*, %struct.buffer_head.1** %23, align 8
  %82 = bitcast %struct.buffer_head.1* %81 to %struct.buffer_head*
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %86 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i64*, i64** %13, align 8
  %89 = call i32 %78(%struct.inode* %80, %struct.buffer_head* %82, i64 %83, i64 %84, i32 %87, i64* %88, i64* %19)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* @ENOSPC, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %75
  %94 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %27, align 8
  %95 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %121

99:                                               ; preds = %93
  %100 = load %struct.buffer_head.1*, %struct.buffer_head.1** %24, align 8
  %101 = call i32 @brelse(%struct.buffer_head.1* %100)
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %24, align 8
  %102 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %27, align 8
  %103 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @le64_to_cpu(i32 %104)
  store i64 %105, i64* %21, align 8
  %106 = load %struct.buffer_head.1*, %struct.buffer_head.1** %23, align 8
  store %struct.buffer_head.1* %106, %struct.buffer_head.1** %24, align 8
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %23, align 8
  %107 = load %struct.inode.0*, %struct.inode.0** %22, align 8
  %108 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %25, align 8
  %109 = load i64, i64* %21, align 8
  %110 = call i32 @ocfs2_read_group_descriptor(%struct.inode.0* %107, %struct.ocfs2_dinode* %108, i64 %109, %struct.buffer_head.1** %23)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @mlog_errno(i32 %114)
  br label %262

116:                                              ; preds = %99
  %117 = load %struct.buffer_head.1*, %struct.buffer_head.1** %23, align 8
  %118 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %120, %struct.ocfs2_group_desc** %27, align 8
  br label %75

121:                                              ; preds = %98, %75
  %122 = load i32, i32* %17, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* @ENOSPC, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @mlog_errno(i32 %130)
  br label %132

132:                                              ; preds = %129, %124
  br label %262

133:                                              ; preds = %121
  %134 = load i64, i64* %19, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %27, align 8
  %137 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @le64_to_cpu(i32 %138)
  %140 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %135, i64 %139)
  %141 = load i64, i64* %19, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i32*, i32** %14, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @BUG_ON(i32 %147)
  %149 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %150 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %133
  %154 = load %struct.buffer_head.1*, %struct.buffer_head.1** %24, align 8
  %155 = icmp ne %struct.buffer_head.1* %154, null
  br i1 %155, label %156, label %178

156:                                              ; preds = %153
  %157 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %27, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @ocfs2_block_group_reasonably_empty(%struct.ocfs2_group_desc* %157, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load i32*, i32** %10, align 8
  %164 = load %struct.inode.0*, %struct.inode.0** %22, align 8
  %165 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %166 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %165, i32 0, i32 2
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load %struct.buffer_head.1*, %struct.buffer_head.1** %23, align 8
  %169 = load %struct.buffer_head.1*, %struct.buffer_head.1** %24, align 8
  %170 = load i64, i64* %18, align 8
  %171 = call i32 @ocfs2_relink_block_group(i32* %163, %struct.inode.0* %164, %struct.TYPE_13__* %167, %struct.buffer_head.1* %168, %struct.buffer_head.1* %169, i64 %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @mlog_errno(i32 %175)
  br label %262

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %177, %156, %153, %133
  %179 = load i32*, i32** %10, align 8
  %180 = load %struct.inode.0*, %struct.inode.0** %22, align 8
  %181 = call i32 @INODE_CACHE(%struct.inode.0* %180)
  %182 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %183 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %182, i32 0, i32 2
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %186 = call i32 @ocfs2_journal_access_di(i32* %179, i32 %181, %struct.TYPE_13__* %184, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %178
  %190 = load i32, i32* %17, align 4
  %191 = call i32 @mlog_errno(i32 %190)
  br label %262

192:                                              ; preds = %178
  %193 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %25, align 8
  %194 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @le32_to_cpu(i32 %197)
  store i64 %198, i64* %20, align 8
  %199 = load i32*, i32** %14, align 8
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %20, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @cpu_to_le32(i64 %203)
  %205 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %25, align 8
  %206 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 4
  %209 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %26, align 8
  %210 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %209, i32 0, i32 0
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i64, i64* %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* %215, align 4
  %217 = sub i32 0, %216
  %218 = call i32 @le32_add_cpu(i32* %214, i32 %217)
  %219 = load i32*, i32** %10, align 8
  %220 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %221 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %220, i32 0, i32 2
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = call i32 @ocfs2_journal_dirty(i32* %219, %struct.TYPE_13__* %222)
  store i32 %223, i32* %17, align 4
  %224 = load i32, i32* %17, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %192
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @mlog_errno(i32 %227)
  br label %262

229:                                              ; preds = %192
  %230 = load i32*, i32** %10, align 8
  %231 = load %struct.inode.0*, %struct.inode.0** %22, align 8
  %232 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %27, align 8
  %233 = load %struct.buffer_head.1*, %struct.buffer_head.1** %23, align 8
  %234 = load i64*, i64** %13, align 8
  %235 = load i64, i64* %234, align 8
  %236 = load i32*, i32** %14, align 8
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @ocfs2_block_group_set_bits(i32* %230, %struct.inode.0* %231, %struct.ocfs2_group_desc* %232, %struct.buffer_head.1* %233, i64 %235, i32 %237)
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %17, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %229
  %242 = load i32, i32* %17, align 4
  %243 = call i32 @mlog_errno(i32 %242)
  br label %262

244:                                              ; preds = %229
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %25, align 8
  %248 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @le64_to_cpu(i32 %249)
  %251 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %246, i64 %250)
  %252 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %27, align 8
  %253 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @le64_to_cpu(i32 %254)
  %256 = load i64*, i64** %15, align 8
  store i64 %255, i64* %256, align 8
  %257 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %27, align 8
  %258 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @le16_to_cpu(i32 %259)
  %261 = load i64*, i64** %16, align 8
  store i64 %260, i64* %261, align 8
  br label %262

262:                                              ; preds = %244, %241, %226, %189, %174, %132, %113, %65
  %263 = load %struct.buffer_head.1*, %struct.buffer_head.1** %23, align 8
  %264 = call i32 @brelse(%struct.buffer_head.1* %263)
  %265 = load %struct.buffer_head.1*, %struct.buffer_head.1** %24, align 8
  %266 = call i32 @brelse(%struct.buffer_head.1* %265)
  %267 = load i32, i32* %17, align 4
  %268 = call i32 @mlog_exit(i32 %267)
  %269 = load i32, i32* %17, align 4
  ret i32 %269
}

declare dso_local i32 @mlog(i32, i8*, i32, i64, ...) #1

declare dso_local %struct.TYPE_14__* @OCFS2_I(%struct.inode.0*) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode.0*, %struct.ocfs2_dinode*, i64, %struct.buffer_head.1**) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head.1*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_block_group_reasonably_empty(%struct.ocfs2_group_desc*, i32) #1

declare dso_local i32 @ocfs2_relink_block_group(i32*, %struct.inode.0*, %struct.TYPE_13__*, %struct.buffer_head.1*, %struct.buffer_head.1*, i64) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode.0*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ocfs2_block_group_set_bits(i32*, %struct.inode.0*, %struct.ocfs2_group_desc*, %struct.buffer_head.1*, i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
