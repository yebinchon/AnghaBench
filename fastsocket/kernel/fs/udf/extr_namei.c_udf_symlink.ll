; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_23__*, i32*, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32* }
%struct.dentry = type { i32 }
%struct.pathComponent = type { i32, i32, i32, i64 }
%struct.udf_fileident_bh = type { %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.extent_position = type { %struct.TYPE_22__*, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.fileIdentDesc = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32, i8* }
%struct.buffer_head = type { i64 }
%struct.udf_inode_info = type { i64, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8* }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.logicalVolIntegrityDesc = type { i64 }
%struct.logicalVolHeaderDesc = type { i32 }
%struct.TYPE_18__ = type { %struct.buffer_head* }
%struct.allocDescImpUse = type { i64 }

@S_IFLNK = common dso_local global i32 0, align 4
@UDF_NAME_LEN = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@udf_symlink_aops = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @udf_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.pathComponent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.udf_fileident_bh, align 8
  %11 = alloca %struct.extent_position, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fileIdentDesc*, align 8
  %15 = alloca %struct.fileIdentDesc, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca %struct.udf_inode_info*, align 8
  %23 = alloca %struct.kernel_lb_addr, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.logicalVolIntegrityDesc*, align 8
  %26 = alloca %struct.logicalVolHeaderDesc*, align 8
  %27 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %28 = bitcast %struct.extent_position* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  store i8* null, i8** %19, align 8
  %29 = call i32 (...) @lock_kernel()
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = load i32, i32* @S_IFLNK, align 4
  %32 = call %struct.inode* @udf_new_inode(%struct.inode* %30, i32 %31, i32* %17)
  store %struct.inode* %32, %struct.inode** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %467

36:                                               ; preds = %3
  %37 = load i32, i32* @UDF_NAME_LEN, align 4
  %38 = load i32, i32* @GFP_NOFS, align 4
  %39 = call i8* @kmalloc(i32 %37, i32 %38)
  store i8* %39, i8** %19, align 8
  %40 = load i8*, i8** %19, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %17, align 4
  br label %472

45:                                               ; preds = %36
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %46)
  store %struct.udf_inode_info* %47, %struct.udf_inode_info** %22, align 8
  %48 = load i32, i32* @S_IFLNK, align 4
  %49 = load i32, i32* @S_IRWXUGO, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  store i32* @udf_symlink_aops, i32** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 3
  store i32* @page_symlink_inode_operations, i32** %57, align 8
  %58 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %59 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %157

63:                                               ; preds = %45
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %69 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %73 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @udf_new_block(%struct.TYPE_23__* %66, %struct.inode* %67, i32 %71, i32 %75, i32* %17)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %63
  br label %472

80:                                               ; preds = %63
  %81 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 2
  %82 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %83 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %82, i32 0, i32 4
  %84 = bitcast %struct.TYPE_17__* %81 to i8*
  %85 = bitcast %struct.TYPE_17__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 8, i1 false)
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 1
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %89, align 8
  %90 = load i32, i32* %18, align 4
  %91 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %23, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %93 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %23, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 2
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* %24, align 4
  %103 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %104 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = load i32, i32* %24, align 4
  %107 = call i32 @udf_add_aext(%struct.inode* %105, %struct.extent_position* %11, %struct.kernel_lb_addr* %23, i32 %106, i32 0)
  %108 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = call i32 @brelse(%struct.TYPE_22__* %109)
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 2
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %116 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @udf_get_pblock(%struct.TYPE_23__* %113, i32 %114, i32 %118, i32 0)
  store i32 %119, i32* %18, align 4
  %120 = load %struct.inode*, %struct.inode** %7, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 2
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = load i32, i32* %18, align 4
  %124 = call %struct.TYPE_22__* @udf_tread(%struct.TYPE_23__* %122, i32 %123)
  %125 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  store %struct.TYPE_22__* %124, %struct.TYPE_22__** %125, align 8
  %126 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = call i32 @lock_buffer(%struct.TYPE_22__* %127)
  %129 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 2
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @memset(i8* %132, i32 0, i32 %137)
  %139 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = call i32 @set_buffer_uptodate(%struct.TYPE_22__* %140)
  %142 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = call i32 @unlock_buffer(%struct.TYPE_22__* %143)
  %145 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  %147 = load %struct.inode*, %struct.inode** %7, align 8
  %148 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_22__* %146, %struct.inode* %147)
  %149 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.inode*, %struct.inode** %7, align 8
  %154 = call i32 @udf_ext0_offset(%struct.inode* %153)
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8* %156, i8** %16, align 8
  br label %167

157:                                              ; preds = %45
  %158 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %159 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %163 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %161, i64 %165
  store i8* %166, i8** %16, align 8
  br label %167

167:                                              ; preds = %157, %80
  %168 = load %struct.inode*, %struct.inode** %7, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 2
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.inode*, %struct.inode** %7, align 8
  %174 = call i32 @udf_ext0_offset(%struct.inode* %173)
  %175 = sub nsw i32 %172, %174
  store i32 %175, i32* %12, align 4
  %176 = load i8*, i8** %16, align 8
  %177 = bitcast i8* %176 to %struct.pathComponent*
  store %struct.pathComponent* %177, %struct.pathComponent** %8, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 47
  br i1 %181, label %182, label %202

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %186, %182
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %6, align 8
  br label %186

186:                                              ; preds = %183
  %187 = load i8*, i8** %6, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 47
  br i1 %190, label %183, label %191

191:                                              ; preds = %186
  %192 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %193 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %195 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %194, i32 0, i32 1
  store i32 0, i32* %195, align 4
  %196 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %197 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %196, i32 0, i32 3
  store i64 0, i64* %197, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = add i64 %199, 24
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %191, %167
  %203 = load i32, i32* @ENAMETOOLONG, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %345, %202
  %206 = load i8*, i8** %6, align 8
  %207 = load i8, i8* %206, align 1
  %208 = icmp ne i8 %207, 0
  br i1 %208, label %209, label %346

209:                                              ; preds = %205
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %211, 24
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = icmp ugt i64 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %472

217:                                              ; preds = %209
  %218 = load i8*, i8** %16, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = bitcast i8* %221 to %struct.pathComponent*
  store %struct.pathComponent* %222, %struct.pathComponent** %8, align 8
  %223 = load i8*, i8** %6, align 8
  store i8* %223, i8** %9, align 8
  br label %224

224:                                              ; preds = %237, %217
  %225 = load i8*, i8** %6, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %6, align 8
  br label %227

227:                                              ; preds = %224
  %228 = load i8*, i8** %6, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load i8*, i8** %6, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp ne i32 %235, 47
  br label %237

237:                                              ; preds = %232, %227
  %238 = phi i1 [ false, %227 ], [ %236, %232 ]
  br i1 %238, label %224, label %239

239:                                              ; preds = %237
  %240 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %241 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %240, i32 0, i32 0
  store i32 5, i32* %241, align 8
  %242 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %243 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %242, i32 0, i32 1
  store i32 0, i32* %243, align 4
  %244 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %245 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %244, i32 0, i32 3
  store i64 0, i64* %245, align 8
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 46
  br i1 %250, label %251, label %279

251:                                              ; preds = %239
  %252 = load i8*, i8** %6, align 8
  %253 = load i8*, i8** %9, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = icmp eq i64 %256, 1
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %260 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %259, i32 0, i32 0
  store i32 4, i32* %260, align 8
  br label %278

261:                                              ; preds = %251
  %262 = load i8*, i8** %6, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = icmp eq i64 %266, 2
  br i1 %267, label %268, label %277

268:                                              ; preds = %261
  %269 = load i8*, i8** %9, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 46
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %276 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %275, i32 0, i32 0
  store i32 3, i32* %276, align 8
  br label %277

277:                                              ; preds = %274, %268, %261
  br label %278

278:                                              ; preds = %277, %258
  br label %279

279:                                              ; preds = %278, %239
  %280 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %281 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, 5
  br i1 %283, label %284, label %322

284:                                              ; preds = %279
  %285 = load %struct.inode*, %struct.inode** %7, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 2
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %286, align 8
  %288 = load i8*, i8** %9, align 8
  %289 = load i8*, i8** %19, align 8
  %290 = load i8*, i8** %6, align 8
  %291 = load i8*, i8** %9, align 8
  %292 = ptrtoint i8* %290 to i64
  %293 = ptrtoint i8* %291 to i64
  %294 = sub i64 %292, %293
  %295 = trunc i64 %294 to i32
  %296 = call i32 @udf_put_filename(%struct.TYPE_23__* %287, i8* %288, i8* %289, i32 %295)
  store i32 %296, i32* %20, align 4
  %297 = load i32, i32* %20, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %284
  br label %472

300:                                              ; preds = %284
  %301 = load i32, i32* %13, align 4
  %302 = sext i32 %301 to i64
  %303 = add i64 %302, 24
  %304 = load i32, i32* %20, align 4
  %305 = sext i32 %304 to i64
  %306 = add i64 %303, %305
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = icmp ugt i64 %306, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %300
  br label %472

311:                                              ; preds = %300
  %312 = load i32, i32* %20, align 4
  %313 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %314 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 4
  br label %315

315:                                              ; preds = %311
  %316 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %317 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load i8*, i8** %19, align 8
  %320 = load i32, i32* %20, align 4
  %321 = call i32 @memcpy(i32 %318, i8* %319, i32 %320)
  br label %322

322:                                              ; preds = %315, %279
  %323 = load %struct.pathComponent*, %struct.pathComponent** %8, align 8
  %324 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = add i64 24, %326
  %328 = load i32, i32* %13, align 4
  %329 = sext i32 %328 to i64
  %330 = add i64 %329, %327
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %13, align 4
  %332 = load i8*, i8** %6, align 8
  %333 = load i8, i8* %332, align 1
  %334 = icmp ne i8 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %322
  br label %336

336:                                              ; preds = %339, %335
  %337 = load i8*, i8** %6, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %6, align 8
  br label %339

339:                                              ; preds = %336
  %340 = load i8*, i8** %6, align 8
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 47
  br i1 %343, label %336, label %344

344:                                              ; preds = %339
  br label %345

345:                                              ; preds = %344, %322
  br label %205

346:                                              ; preds = %205
  %347 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %347, align 8
  %349 = call i32 @brelse(%struct.TYPE_22__* %348)
  %350 = load i32, i32* %13, align 4
  %351 = load %struct.inode*, %struct.inode** %7, align 8
  %352 = getelementptr inbounds %struct.inode, %struct.inode* %351, i32 0, i32 1
  store i32 %350, i32* %352, align 4
  %353 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %354 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %364

358:                                              ; preds = %346
  %359 = load %struct.inode*, %struct.inode** %7, align 8
  %360 = getelementptr inbounds %struct.inode, %struct.inode* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %363 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %362, i32 0, i32 3
  store i32 %361, i32* %363, align 8
  br label %364

364:                                              ; preds = %358, %346
  %365 = load %struct.inode*, %struct.inode** %7, align 8
  %366 = call i32 @mark_inode_dirty(%struct.inode* %365)
  %367 = load %struct.inode*, %struct.inode** %4, align 8
  %368 = load %struct.dentry*, %struct.dentry** %5, align 8
  %369 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %367, %struct.dentry* %368, %struct.udf_fileident_bh* %10, %struct.fileIdentDesc* %15, i32* %17)
  store %struct.fileIdentDesc* %369, %struct.fileIdentDesc** %14, align 8
  %370 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %14, align 8
  %371 = icmp ne %struct.fileIdentDesc* %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %364
  br label %472

373:                                              ; preds = %364
  %374 = load %struct.inode*, %struct.inode** %7, align 8
  %375 = getelementptr inbounds %struct.inode, %struct.inode* %374, i32 0, i32 2
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i8* @cpu_to_le32(i32 %378)
  %380 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %15, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 2
  store i8* %379, i8** %381, align 8
  %382 = load %struct.udf_inode_info*, %struct.udf_inode_info** %22, align 8
  %383 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %382, i32 0, i32 4
  %384 = bitcast %struct.TYPE_17__* %383 to i64*
  %385 = load i64, i64* %384, align 4
  %386 = call i32 @cpu_to_lelb(i64 %385)
  %387 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %15, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 1
  store i32 %386, i32* %388, align 8
  %389 = load %struct.inode*, %struct.inode** %7, align 8
  %390 = getelementptr inbounds %struct.inode, %struct.inode* %389, i32 0, i32 2
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %390, align 8
  %392 = call %struct.TYPE_18__* @UDF_SB(%struct.TYPE_23__* %391)
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 0
  %394 = load %struct.buffer_head*, %struct.buffer_head** %393, align 8
  store %struct.buffer_head* %394, %struct.buffer_head** %21, align 8
  %395 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %396 = icmp ne %struct.buffer_head* %395, null
  br i1 %396, label %397, label %437

397:                                              ; preds = %373
  %398 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %399 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = inttoptr i64 %400 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %401, %struct.logicalVolIntegrityDesc** %25, align 8
  %402 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %25, align 8
  %403 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = inttoptr i64 %404 to %struct.logicalVolHeaderDesc*
  store %struct.logicalVolHeaderDesc* %405, %struct.logicalVolHeaderDesc** %26, align 8
  %406 = load %struct.logicalVolHeaderDesc*, %struct.logicalVolHeaderDesc** %26, align 8
  %407 = getelementptr inbounds %struct.logicalVolHeaderDesc, %struct.logicalVolHeaderDesc* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @le64_to_cpu(i32 %408)
  store i32 %409, i32* %27, align 4
  %410 = load i32, i32* %27, align 4
  %411 = sext i32 %410 to i64
  %412 = and i64 %411, 4294967295
  %413 = trunc i64 %412 to i32
  %414 = call i8* @cpu_to_le32(i32 %413)
  %415 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %15, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = inttoptr i64 %417 to %struct.allocDescImpUse*
  %419 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = inttoptr i64 %420 to i8**
  store i8* %414, i8** %421, align 8
  %422 = load i32, i32* %27, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %27, align 4
  %424 = sext i32 %423 to i64
  %425 = and i64 %424, 4294967295
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %397
  %428 = load i32, i32* %27, align 4
  %429 = add nsw i32 %428, 16
  store i32 %429, i32* %27, align 4
  br label %430

430:                                              ; preds = %427, %397
  %431 = load i32, i32* %27, align 4
  %432 = call i32 @cpu_to_le64(i32 %431)
  %433 = load %struct.logicalVolHeaderDesc*, %struct.logicalVolHeaderDesc** %26, align 8
  %434 = getelementptr inbounds %struct.logicalVolHeaderDesc, %struct.logicalVolHeaderDesc* %433, i32 0, i32 0
  store i32 %432, i32* %434, align 4
  %435 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %436 = call i32 @mark_buffer_dirty(%struct.buffer_head* %435)
  br label %437

437:                                              ; preds = %430, %373
  %438 = load %struct.inode*, %struct.inode** %4, align 8
  %439 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %14, align 8
  %440 = call i32 @udf_write_fi(%struct.inode* %438, %struct.fileIdentDesc* %15, %struct.fileIdentDesc* %439, %struct.udf_fileident_bh* %10, i32* null, i32* null)
  %441 = load %struct.inode*, %struct.inode** %4, align 8
  %442 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %441)
  %443 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %450

447:                                              ; preds = %437
  %448 = load %struct.inode*, %struct.inode** %4, align 8
  %449 = call i32 @mark_inode_dirty(%struct.inode* %448)
  br label %450

450:                                              ; preds = %447, %437
  %451 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 0
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %451, align 8
  %453 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 1
  %454 = load %struct.TYPE_22__*, %struct.TYPE_22__** %453, align 8
  %455 = icmp ne %struct.TYPE_22__* %452, %454
  br i1 %455, label %456, label %460

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 1
  %458 = load %struct.TYPE_22__*, %struct.TYPE_22__** %457, align 8
  %459 = call i32 @brelse(%struct.TYPE_22__* %458)
  br label %460

460:                                              ; preds = %456, %450
  %461 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 0
  %462 = load %struct.TYPE_22__*, %struct.TYPE_22__** %461, align 8
  %463 = call i32 @brelse(%struct.TYPE_22__* %462)
  %464 = load %struct.dentry*, %struct.dentry** %5, align 8
  %465 = load %struct.inode*, %struct.inode** %7, align 8
  %466 = call i32 @d_instantiate(%struct.dentry* %464, %struct.inode* %465)
  store i32 0, i32* %17, align 4
  br label %467

467:                                              ; preds = %472, %460, %35
  %468 = load i8*, i8** %19, align 8
  %469 = call i32 @kfree(i8* %468)
  %470 = call i32 (...) @unlock_kernel()
  %471 = load i32, i32* %17, align 4
  ret i32 %471

472:                                              ; preds = %372, %310, %299, %216, %79, %42
  %473 = load %struct.inode*, %struct.inode** %7, align 8
  %474 = call i32 @inode_dec_link_count(%struct.inode* %473)
  %475 = load %struct.inode*, %struct.inode** %7, align 8
  %476 = call i32 @iput(%struct.inode* %475)
  br label %467
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lock_kernel(...) #2

declare dso_local %struct.inode* @udf_new_inode(%struct.inode*, i32, i32*) #2

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #2

declare dso_local i32 @udf_new_block(%struct.TYPE_23__*, %struct.inode*, i32, i32, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #2

declare dso_local i32 @udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @brelse(%struct.TYPE_22__*) #2

declare dso_local i32 @udf_get_pblock(%struct.TYPE_23__*, i32, i32, i32) #2

declare dso_local %struct.TYPE_22__* @udf_tread(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @lock_buffer(%struct.TYPE_22__*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @set_buffer_uptodate(%struct.TYPE_22__*) #2

declare dso_local i32 @unlock_buffer(%struct.TYPE_22__*) #2

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_22__*, %struct.inode*) #2

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #2

declare dso_local i32 @udf_put_filename(%struct.TYPE_23__*, i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #2

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_lelb(i64) #2

declare dso_local %struct.TYPE_18__* @UDF_SB(%struct.TYPE_23__*) #2

declare dso_local i32 @le64_to_cpu(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #2

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @unlock_kernel(...) #2

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #2

declare dso_local i32 @iput(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
