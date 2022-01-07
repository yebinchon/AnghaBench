; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_begin_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_begin_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.page = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, %struct.page*, i32, %struct.TYPE_8__*, i32*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_9__ = type { i64 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"extend inode %llu, i_size = %lld, di->i_clusters = %u, clusters_to_add = %u, extents_to_split = %u\0A\00", align 1
@EDQUOT = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_write_begin_nolock(%struct.address_space* %0, i32 %1, i32 %2, i32 %3, %struct.page** %4, i8** %5, %struct.buffer_head* %6, %struct.page* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ocfs2_write_ctxt*, align 8
  %24 = alloca %struct.inode*, align 8
  %25 = alloca %struct.ocfs2_super*, align 8
  %26 = alloca %struct.ocfs2_dinode*, align 8
  %27 = alloca %struct.ocfs2_alloc_context*, align 8
  %28 = alloca %struct.ocfs2_alloc_context*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.address_space* %0, %struct.address_space** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.page** %4, %struct.page*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store %struct.buffer_head* %6, %struct.buffer_head** %16, align 8
  store %struct.page* %7, %struct.page** %17, align 8
  %31 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  store i32 %31, i32* %20, align 4
  %32 = load %struct.address_space*, %struct.address_space** %10, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = load %struct.inode*, %struct.inode** %33, align 8
  store %struct.inode* %34, %struct.inode** %24, align 8
  %35 = load %struct.inode*, %struct.inode** %24, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ocfs2_super* @OCFS2_SB(i32 %37)
  store %struct.ocfs2_super* %38, %struct.ocfs2_super** %25, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %27, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %28, align 8
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %43 = call i32 @ocfs2_alloc_write_ctxt(%struct.ocfs2_write_ctxt** %23, %struct.ocfs2_super* %39, i32 %40, i32 %41, %struct.buffer_head* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %8
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %9, align 4
  br label %338

50:                                               ; preds = %8
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %52 = call i64 @ocfs2_supports_inline_data(%struct.ocfs2_super* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.address_space*, %struct.address_space** %10, align 8
  %56 = load %struct.inode*, %struct.inode** %24, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.page*, %struct.page** %17, align 8
  %60 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %61 = call i32 @ocfs2_try_to_write_inline_data(%struct.address_space* %55, %struct.inode* %56, i32 %57, i32 %58, %struct.page* %59, %struct.ocfs2_write_ctxt* %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 0, i32* %18, align 4
  br label %298

65:                                               ; preds = %54
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %322

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.inode*, %struct.inode** %24, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %77 = call i32 @ocfs2_expand_nonsparse_inode(%struct.inode* %73, i32 %74, i32 %75, %struct.ocfs2_write_ctxt* %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %322

83:                                               ; preds = %72
  %84 = load %struct.inode*, %struct.inode** %24, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @ocfs2_check_range_for_refcount(%struct.inode* %84, i32 %85, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %322

93:                                               ; preds = %83
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load %struct.inode*, %struct.inode** %24, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %99 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %100 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %103 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @UINT_MAX, align 4
  %106 = call i32 @ocfs2_refcount_cow(%struct.inode* %97, %struct.buffer_head* %98, i32 %101, i32 %104, i32 %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %96
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %322

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112, %93
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.inode*, %struct.inode** %24, align 8
  %116 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %117 = call i32 @ocfs2_populate_write_desc(%struct.inode* %115, %struct.ocfs2_write_ctxt* %116, i32* %21, i32* %22)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @mlog_errno(i32 %121)
  br label %322

123:                                              ; preds = %114
  %124 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %125 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %124, i32 0, i32 3
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %129, %struct.ocfs2_dinode** %26, align 8
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %173

135:                                              ; preds = %132, %123
  %136 = load %struct.inode*, %struct.inode** %24, align 8
  %137 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %136)
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.inode*, %struct.inode** %24, align 8
  %141 = call i64 @i_size_read(%struct.inode* %140)
  %142 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %26, align 8
  %143 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @le32_to_cpu(i32 %144)
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %22, align 4
  %148 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i64 %139, i64 %141, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.inode*, %struct.inode** %24, align 8
  %150 = call i32 @INODE_CACHE(%struct.inode* %149)
  %151 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %152 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %151, i32 0, i32 3
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %30, i32 %150, %struct.TYPE_8__* %153)
  %155 = load %struct.inode*, %struct.inode** %24, align 8
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %22, align 4
  %158 = call i32 @ocfs2_lock_allocators(%struct.inode* %155, %struct.ocfs2_extent_tree* %30, i32 %156, i32 %157, %struct.ocfs2_alloc_context** %27, %struct.ocfs2_alloc_context** %28)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %135
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @mlog_errno(i32 %162)
  br label %322

164:                                              ; preds = %135
  %165 = load %struct.inode*, %struct.inode** %24, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %26, align 8
  %169 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %21, align 4
  %172 = call i32 @ocfs2_calc_extend_credits(i32 %167, i32* %170, i32 %171)
  store i32 %172, i32* %20, align 4
  br label %173

173:                                              ; preds = %164, %132
  %174 = load i32, i32* %21, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %205, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %205, label %179

179:                                              ; preds = %176
  %180 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %181 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %206

184:                                              ; preds = %179
  %185 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %186 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %185, i32 0, i32 5
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %205, label %192

192:                                              ; preds = %184
  %193 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %194 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %193, i32 0, i32 5
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %197 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %192, %184, %176, %173
  store i32 1, i32* %19, align 4
  br label %207

206:                                              ; preds = %192, %179
  store i32 0, i32* %19, align 4
  br label %207

207:                                              ; preds = %206, %205
  %208 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %209 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %19, align 4
  %213 = call i32 @ocfs2_set_target_boundaries(%struct.ocfs2_super* %208, %struct.ocfs2_write_ctxt* %209, i32 %210, i32 %211, i32 %212)
  %214 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %215 = load i32, i32* %20, align 4
  %216 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %214, i32 %215)
  store i32* %216, i32** %29, align 8
  %217 = load i32*, i32** %29, align 8
  %218 = call i64 @IS_ERR(i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %207
  %221 = load i32*, i32** %29, align 8
  %222 = call i32 @PTR_ERR(i32* %221)
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @mlog_errno(i32 %223)
  br label %322

225:                                              ; preds = %207
  %226 = load i32*, i32** %29, align 8
  %227 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %228 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %227, i32 0, i32 4
  store i32* %226, i32** %228, align 8
  %229 = load i32, i32* %21, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %225
  %232 = load %struct.inode*, %struct.inode** %24, align 8
  %233 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %234 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %21, align 4
  %237 = call i32 @ocfs2_clusters_to_bytes(i32 %235, i32 %236)
  %238 = call i64 @vfs_dq_alloc_space_nodirty(%struct.inode* %232, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %231
  %241 = load i32, i32* @EDQUOT, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %18, align 4
  br label %318

243:                                              ; preds = %231, %225
  %244 = load i32*, i32** %29, align 8
  %245 = load %struct.inode*, %struct.inode** %24, align 8
  %246 = call i32 @INODE_CACHE(%struct.inode* %245)
  %247 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %248 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %247, i32 0, i32 3
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %248, align 8
  %250 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %251 = call i32 @ocfs2_journal_access_di(i32* %244, i32 %246, %struct.TYPE_8__* %249, i32 %250)
  store i32 %251, i32* %18, align 4
  %252 = load i32, i32* %18, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %243
  %255 = load i32, i32* %18, align 4
  %256 = call i32 @mlog_errno(i32 %255)
  br label %306

257:                                              ; preds = %243
  %258 = load %struct.address_space*, %struct.address_space** %10, align 8
  %259 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %260 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %261 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* %19, align 4
  %265 = load %struct.page*, %struct.page** %17, align 8
  %266 = call i32 @ocfs2_grab_pages_for_write(%struct.address_space* %258, %struct.ocfs2_write_ctxt* %259, i32 %262, i32 %263, i32 %264, %struct.page* %265)
  store i32 %266, i32* %18, align 4
  %267 = load i32, i32* %18, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %257
  %270 = load i32, i32* %18, align 4
  %271 = call i32 @mlog_errno(i32 %270)
  br label %306

272:                                              ; preds = %257
  %273 = load %struct.address_space*, %struct.address_space** %10, align 8
  %274 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %275 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %276 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* %12, align 4
  %279 = call i32 @ocfs2_write_cluster_by_desc(%struct.address_space* %273, %struct.ocfs2_alloc_context* %274, %struct.ocfs2_alloc_context* %275, %struct.ocfs2_write_ctxt* %276, i32 %277, i32 %278)
  store i32 %279, i32* %18, align 4
  %280 = load i32, i32* %18, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %272
  %283 = load i32, i32* %18, align 4
  %284 = call i32 @mlog_errno(i32 %283)
  br label %306

285:                                              ; preds = %272
  %286 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %287 = icmp ne %struct.ocfs2_alloc_context* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %290 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %289)
  br label %291

291:                                              ; preds = %288, %285
  %292 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %293 = icmp ne %struct.ocfs2_alloc_context* %292, null
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %296 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %295)
  br label %297

297:                                              ; preds = %294, %291
  br label %298

298:                                              ; preds = %297, %64
  %299 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %300 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %299, i32 0, i32 1
  %301 = load %struct.page*, %struct.page** %300, align 8
  %302 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %301, %struct.page** %302, align 8
  %303 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %304 = bitcast %struct.ocfs2_write_ctxt* %303 to i8*
  %305 = load i8**, i8*** %15, align 8
  store i8* %304, i8** %305, align 8
  store i32 0, i32* %9, align 4
  br label %338

306:                                              ; preds = %282, %269, %254
  %307 = load i32, i32* %21, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %306
  %310 = load %struct.inode*, %struct.inode** %24, align 8
  %311 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %312 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %21, align 4
  %315 = call i32 @ocfs2_clusters_to_bytes(i32 %313, i32 %314)
  %316 = call i32 @vfs_dq_free_space(%struct.inode* %310, i32 %315)
  br label %317

317:                                              ; preds = %309, %306
  br label %318

318:                                              ; preds = %317, %240
  %319 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %320 = load i32*, i32** %29, align 8
  %321 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %319, i32* %320)
  br label %322

322:                                              ; preds = %318, %220, %161, %120, %109, %90, %80, %68
  %323 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %23, align 8
  %324 = call i32 @ocfs2_free_write_ctxt(%struct.ocfs2_write_ctxt* %323)
  %325 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %326 = icmp ne %struct.ocfs2_alloc_context* %325, null
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %329 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %328)
  br label %330

330:                                              ; preds = %327, %322
  %331 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %332 = icmp ne %struct.ocfs2_alloc_context* %331, null
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %335 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %334)
  br label %336

336:                                              ; preds = %333, %330
  %337 = load i32, i32* %18, align 4
  store i32 %337, i32* %9, align 4
  br label %338

338:                                              ; preds = %336, %298, %46
  %339 = load i32, i32* %9, align 4
  ret i32 %339
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_alloc_write_ctxt(%struct.ocfs2_write_ctxt**, %struct.ocfs2_super*, i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_try_to_write_inline_data(%struct.address_space*, %struct.inode*, i32, i32, %struct.page*, %struct.ocfs2_write_ctxt*) #1

declare dso_local i32 @ocfs2_expand_nonsparse_inode(%struct.inode*, i32, i32, %struct.ocfs2_write_ctxt*) #1

declare dso_local i32 @ocfs2_check_range_for_refcount(%struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_refcount_cow(%struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_populate_write_desc(%struct.inode*, %struct.ocfs2_write_ctxt*, i32*, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_allocators(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_calc_extend_credits(i32, i32*, i32) #1

declare dso_local i32 @ocfs2_set_target_boundaries(%struct.ocfs2_super*, %struct.ocfs2_write_ctxt*, i32, i32, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @vfs_dq_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ocfs2_grab_pages_for_write(%struct.address_space*, %struct.ocfs2_write_ctxt*, i32, i32, i32, %struct.page*) #1

declare dso_local i32 @ocfs2_write_cluster_by_desc(%struct.address_space*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_write_ctxt*, i32, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @vfs_dq_free_space(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_write_ctxt(%struct.ocfs2_write_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
