; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.udf_fileident_bh = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.fileIdentDesc = type { i32, i32, i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32, %struct.TYPE_12__*, %struct.kernel_lb_addr }
%struct.udf_inode_info = type { i64, i32, i32, %struct.TYPE_11__, %struct.kernel_lb_addr }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@UDF_NAME_LEN = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@FID_FILE_CHAR_DELETED = common dso_local global i32 0, align 4
@TAG_IDENT_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fileIdentDesc* (%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*)* @udf_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %0, %struct.dentry* %1, %struct.udf_fileident_bh* %2, %struct.fileIdentDesc* %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.udf_fileident_bh*, align 8
  %9 = alloca %struct.fileIdentDesc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.fileIdentDesc*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.kernel_lb_addr, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.extent_position, align 8
  %25 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.udf_fileident_bh* %2, %struct.udf_fileident_bh** %8, align 8
  store %struct.fileIdentDesc* %3, %struct.fileIdentDesc** %9, align 8
  store i32* %4, i32** %10, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %11, align 8
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %12, align 8
  store i8* null, i8** %13, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @udf_ext0_offset(%struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %22, align 4
  %35 = bitcast %struct.extent_position* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 24, i1 false)
  %36 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %37 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %36, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %39 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %38, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %39, align 8
  %40 = load i32, i32* @UDF_NAME_LEN, align 4
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %5
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  br label %682

49:                                               ; preds = %5
  %50 = load %struct.dentry*, %struct.dentry** %7, align 8
  %51 = icmp ne %struct.dentry* %50, null
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  br label %682

62:                                               ; preds = %52
  %63 = load %struct.super_block*, %struct.super_block** %11, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @udf_put_filename(%struct.super_block* %63, i32 %67, i8* %68, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %62
  %77 = load i32, i32* @ENAMETOOLONG, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %682

80:                                               ; preds = %62
  br label %82

81:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 32, %84
  %86 = add i64 %85, 3
  %87 = and i64 %86, -4
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %17, align 4
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = call i32 @udf_ext0_offset(%struct.inode* %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  %94 = load %struct.super_block*, %struct.super_block** %93, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  %98 = and i32 %91, %97
  %99 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %100 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %102 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %103)
  store %struct.udf_inode_info* %104, %struct.udf_inode_info** %25, align 8
  %105 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %106 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %203

110:                                              ; preds = %82
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 1
  %115 = load %struct.super_block*, %struct.super_block** %114, align 8
  %116 = getelementptr inbounds %struct.super_block, %struct.super_block* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %112, %117
  %119 = call i32 @inode_bmap(%struct.inode* %111, i32 %118, %struct.extent_position* %24, %struct.kernel_lb_addr* %21, i32* %22, i32* %23)
  %120 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %121 = ashr i32 %120, 30
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %110
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 1
  %126 = load %struct.super_block*, %struct.super_block** %125, align 8
  %127 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %128 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %127, i32 0, i32 4
  %129 = call i32 @udf_get_lb_pblock(%struct.super_block* %126, %struct.kernel_lb_addr* %128, i32 0)
  store i32 %129, i32* %20, align 4
  %130 = load %struct.super_block*, %struct.super_block** %11, align 8
  %131 = getelementptr inbounds %struct.super_block, %struct.super_block* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %134 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %136 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  br label %276

137:                                              ; preds = %110
  %138 = load %struct.inode*, %struct.inode** %6, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  %140 = load %struct.super_block*, %struct.super_block** %139, align 8
  %141 = load i32, i32* %23, align 4
  %142 = call i32 @udf_get_lb_pblock(%struct.super_block* %140, %struct.kernel_lb_addr* %21, i32 %141)
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %23, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %23, align 4
  %145 = load %struct.inode*, %struct.inode** %6, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 1
  %147 = load %struct.super_block*, %struct.super_block** %146, align 8
  %148 = getelementptr inbounds %struct.super_block, %struct.super_block* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %144, %149
  %151 = load i32, i32* %22, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %179

153:                                              ; preds = %137
  %154 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %155 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = sub i64 %162, 4
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 8
  br label %178

165:                                              ; preds = %153
  %166 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %167 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = sub i64 %174, 4
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  br label %177

177:                                              ; preds = %171, %165
  br label %178

178:                                              ; preds = %177, %159
  br label %180

179:                                              ; preds = %137
  store i32 0, i32* %23, align 4
  br label %180

180:                                              ; preds = %179, %178
  %181 = load %struct.inode*, %struct.inode** %6, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 1
  %183 = load %struct.super_block*, %struct.super_block** %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = call %struct.TYPE_12__* @udf_tread(%struct.super_block* %183, i32 %184)
  %186 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %187 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %186, i32 0, i32 3
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %187, align 8
  %188 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %189 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %188, i32 0, i32 2
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %189, align 8
  %190 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %191 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %190, i32 0, i32 2
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = icmp ne %struct.TYPE_12__* %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %180
  %195 = load i32, i32* @EIO, align 4
  %196 = sub nsw i32 0, %195
  %197 = load i32*, i32** %10, align 8
  store i32 %196, i32* %197, align 4
  br label %682

198:                                              ; preds = %180
  %199 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %200 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %20, align 4
  br label %203

203:                                              ; preds = %198, %82
  br label %204

204:                                              ; preds = %274, %203
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %275

208:                                              ; preds = %204
  %209 = load %struct.inode*, %struct.inode** %6, align 8
  %210 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %211 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %212 = call %struct.fileIdentDesc* @udf_fileident_read(%struct.inode* %209, i32* %15, %struct.udf_fileident_bh* %210, %struct.fileIdentDesc* %211, %struct.extent_position* %24, %struct.kernel_lb_addr* %21, i32* %22, i32* %23)
  store %struct.fileIdentDesc* %212, %struct.fileIdentDesc** %12, align 8
  %213 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %12, align 8
  %214 = icmp ne %struct.fileIdentDesc* %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %208
  %216 = load i32, i32* @EIO, align 4
  %217 = sub nsw i32 0, %216
  %218 = load i32*, i32** %10, align 8
  store i32 %217, i32* %218, align 4
  br label %682

219:                                              ; preds = %208
  %220 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %221 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @le16_to_cpu(i8* %222)
  store i32 %223, i32* %19, align 4
  %224 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %225 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  store i32 %226, i32* %18, align 4
  %227 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %228 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @FID_FILE_CHAR_DELETED, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %274

233:                                              ; preds = %219
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = add i64 32, %235
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = add i64 %236, %238
  %240 = add i64 %239, 3
  %241 = and i64 %240, -4
  %242 = load i32, i32* %17, align 4
  %243 = sext i32 %242 to i64
  %244 = icmp eq i64 %241, %243
  br i1 %244, label %245, label %273

245:                                              ; preds = %233
  %246 = call i8* @cpu_to_le16(i32 1)
  %247 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %248 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  store i8* %246, i8** %249, align 8
  %250 = call i8* @cpu_to_le16(i32 1)
  %251 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %252 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %251, i32 0, i32 3
  store i8* %250, i8** %252, align 8
  %253 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %254 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %253, i32 0, i32 1
  store i32 0, i32* %254, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %257 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = call i8* @cpu_to_le16(i32 0)
  %259 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %260 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %259, i32 0, i32 2
  store i8* %258, i8** %260, align 8
  %261 = load %struct.inode*, %struct.inode** %6, align 8
  %262 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %263 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %12, align 8
  %264 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %265 = load i8*, i8** %13, align 8
  %266 = call i32 @udf_write_fi(%struct.inode* %261, %struct.fileIdentDesc* %262, %struct.fileIdentDesc* %263, %struct.udf_fileident_bh* %264, i32* null, i8* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %245
  br label %700

269:                                              ; preds = %245
  %270 = load i32, i32* @EIO, align 4
  %271 = sub nsw i32 0, %270
  %272 = load i32*, i32** %10, align 8
  store i32 %271, i32* %272, align 4
  br label %682

273:                                              ; preds = %233
  br label %274

274:                                              ; preds = %273, %219
  br label %204

275:                                              ; preds = %204
  br label %276

276:                                              ; preds = %275, %123
  %277 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %278 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %326

282:                                              ; preds = %276
  %283 = load i32, i32* %22, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %326

285:                                              ; preds = %282
  %286 = load i32, i32* %22, align 4
  %287 = load %struct.super_block*, %struct.super_block** %11, align 8
  %288 = getelementptr inbounds %struct.super_block, %struct.super_block* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %286, %289
  %291 = sub nsw i32 %290, 1
  %292 = load %struct.super_block*, %struct.super_block** %11, align 8
  %293 = getelementptr inbounds %struct.super_block, %struct.super_block* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %294, 1
  %296 = xor i32 %295, -1
  %297 = and i32 %291, %296
  store i32 %297, i32* %22, align 4
  %298 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %299 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %309

303:                                              ; preds = %285
  %304 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = sub i64 %306, 4
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %304, align 8
  br label %322

309:                                              ; preds = %285
  %310 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %311 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = sub i64 %318, 4
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %316, align 8
  br label %321

321:                                              ; preds = %315, %309
  br label %322

322:                                              ; preds = %321, %303
  %323 = load %struct.inode*, %struct.inode** %6, align 8
  %324 = load i32, i32* %22, align 4
  %325 = call i32 @udf_write_aext(%struct.inode* %323, %struct.extent_position* %24, %struct.kernel_lb_addr* %21, i32 %324, i32 1)
  br label %326

326:                                              ; preds = %322, %282, %276
  %327 = load i32, i32* %17, align 4
  %328 = load i32, i32* %15, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %15, align 4
  %330 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %331 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %406

335:                                              ; preds = %326
  %336 = load %struct.super_block*, %struct.super_block** %11, align 8
  %337 = getelementptr inbounds %struct.super_block, %struct.super_block* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %340 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = sub nsw i32 %338, %341
  %343 = load i32, i32* %17, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %406

345:                                              ; preds = %335
  %346 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 1
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %346, align 8
  %348 = call i32 @brelse(%struct.TYPE_12__* %347)
  %349 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %349, align 8
  %350 = load %struct.inode*, %struct.inode** %6, align 8
  %351 = call i32 @udf_ext0_offset(%struct.inode* %350)
  %352 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %353 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sub nsw i32 %354, %351
  store i32 %355, i32* %353, align 8
  %356 = load %struct.inode*, %struct.inode** %6, align 8
  %357 = call i32 @udf_ext0_offset(%struct.inode* %356)
  %358 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %359 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 %360, %357
  store i32 %361, i32* %359, align 4
  %362 = load %struct.inode*, %struct.inode** %6, align 8
  %363 = call i32 @udf_ext0_offset(%struct.inode* %362)
  %364 = load i32, i32* %15, align 4
  %365 = sub nsw i32 %364, %363
  store i32 %365, i32* %15, align 4
  %366 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %367 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %366, i32 0, i32 2
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %367, align 8
  %369 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %370 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %369, i32 0, i32 3
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %370, align 8
  %372 = icmp ne %struct.TYPE_12__* %368, %371
  br i1 %372, label %373, label %378

373:                                              ; preds = %345
  %374 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %375 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %374, i32 0, i32 3
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %375, align 8
  %377 = call i32 @brelse(%struct.TYPE_12__* %376)
  br label %378

378:                                              ; preds = %373, %345
  %379 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %380 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %379, i32 0, i32 2
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %380, align 8
  %382 = call i32 @brelse(%struct.TYPE_12__* %381)
  %383 = load %struct.inode*, %struct.inode** %6, align 8
  %384 = load i32*, i32** %10, align 8
  %385 = call %struct.TYPE_12__* @udf_expand_dir_adinicb(%struct.inode* %383, i32* %20, i32* %384)
  %386 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %387 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %386, i32 0, i32 3
  store %struct.TYPE_12__* %385, %struct.TYPE_12__** %387, align 8
  %388 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %389 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %388, i32 0, i32 2
  store %struct.TYPE_12__* %385, %struct.TYPE_12__** %389, align 8
  %390 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %391 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %390, i32 0, i32 2
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %391, align 8
  %393 = icmp ne %struct.TYPE_12__* %392, null
  br i1 %393, label %395, label %394

394:                                              ; preds = %378
  br label %682

395:                                              ; preds = %378
  %396 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 2
  %397 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %398 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %397, i32 0, i32 4
  %399 = bitcast %struct.kernel_lb_addr* %396 to i8*
  %400 = bitcast %struct.kernel_lb_addr* %398 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %399, i8* align 4 %400, i64 4, i1 false)
  %401 = load %struct.inode*, %struct.inode** %6, align 8
  %402 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %401)
  %403 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 0
  store i32 %402, i32* %403, align 8
  %404 = load %struct.inode*, %struct.inode** %6, align 8
  %405 = call i32 @udf_current_aext(%struct.inode* %404, %struct.extent_position* %24, %struct.kernel_lb_addr* %21, i32* %22, i32 1)
  br label %406

406:                                              ; preds = %395, %335, %326
  %407 = load %struct.super_block*, %struct.super_block** %11, align 8
  %408 = getelementptr inbounds %struct.super_block, %struct.super_block* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %411 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = sub nsw i32 %409, %412
  %414 = load i32, i32* %17, align 4
  %415 = icmp sge i32 %413, %414
  br i1 %415, label %416, label %496

416:                                              ; preds = %406
  %417 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %418 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %421 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 8
  %422 = load i32, i32* %17, align 4
  %423 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %424 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %425, %422
  store i32 %426, i32* %424, align 4
  %427 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %428 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %427, i32 0, i32 2
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %428, align 8
  %430 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %431 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %430, i32 0, i32 3
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %431, align 8
  %433 = icmp ne %struct.TYPE_12__* %429, %432
  br i1 %433, label %434, label %444

434:                                              ; preds = %416
  %435 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %436 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %435, i32 0, i32 2
  %437 = load %struct.TYPE_12__*, %struct.TYPE_12__** %436, align 8
  %438 = call i32 @brelse(%struct.TYPE_12__* %437)
  %439 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %440 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %439, i32 0, i32 3
  %441 = load %struct.TYPE_12__*, %struct.TYPE_12__** %440, align 8
  %442 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %443 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %442, i32 0, i32 2
  store %struct.TYPE_12__* %441, %struct.TYPE_12__** %443, align 8
  br label %444

444:                                              ; preds = %434, %416
  %445 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %446 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %472

450:                                              ; preds = %444
  %451 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %452 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %451, i32 0, i32 4
  %453 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  store i32 %454, i32* %20, align 4
  %455 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %456 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %455, i32 0, i32 3
  %457 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %460 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = add nsw i32 %458, %461
  %463 = load %struct.inode*, %struct.inode** %6, align 8
  %464 = call i32 @udf_ext0_offset(%struct.inode* %463)
  %465 = sub nsw i32 %462, %464
  %466 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %467 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = add nsw i32 %465, %468
  %470 = sext i32 %469 to i64
  %471 = inttoptr i64 %470 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %471, %struct.fileIdentDesc** %12, align 8
  br label %495

472:                                              ; preds = %444
  %473 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %21, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* %22, align 4
  %476 = sub nsw i32 %475, 1
  %477 = load %struct.inode*, %struct.inode** %6, align 8
  %478 = getelementptr inbounds %struct.inode, %struct.inode* %477, i32 0, i32 1
  %479 = load %struct.super_block*, %struct.super_block** %478, align 8
  %480 = getelementptr inbounds %struct.super_block, %struct.super_block* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = ashr i32 %476, %481
  %483 = add nsw i32 %474, %482
  store i32 %483, i32* %20, align 4
  %484 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %485 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %484, i32 0, i32 2
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %490 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = sext i32 %491 to i64
  %493 = add nsw i64 %488, %492
  %494 = inttoptr i64 %493 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %494, %struct.fileIdentDesc** %12, align 8
  br label %495

495:                                              ; preds = %472, %450
  br label %621

496:                                              ; preds = %406
  %497 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %498 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.super_block*, %struct.super_block** %11, align 8
  %501 = getelementptr inbounds %struct.super_block, %struct.super_block* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = sub nsw i32 %499, %502
  %504 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %505 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %504, i32 0, i32 0
  store i32 %503, i32* %505, align 8
  %506 = load i32, i32* %17, align 4
  %507 = load %struct.super_block*, %struct.super_block** %11, align 8
  %508 = getelementptr inbounds %struct.super_block, %struct.super_block* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = sub nsw i32 %506, %509
  %511 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %512 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = add nsw i32 %513, %510
  store i32 %514, i32* %512, align 4
  %515 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %516 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %515, i32 0, i32 2
  %517 = load %struct.TYPE_12__*, %struct.TYPE_12__** %516, align 8
  %518 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %519 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %518, i32 0, i32 3
  %520 = load %struct.TYPE_12__*, %struct.TYPE_12__** %519, align 8
  %521 = icmp ne %struct.TYPE_12__* %517, %520
  br i1 %521, label %522, label %532

522:                                              ; preds = %496
  %523 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %524 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %523, i32 0, i32 2
  %525 = load %struct.TYPE_12__*, %struct.TYPE_12__** %524, align 8
  %526 = call i32 @brelse(%struct.TYPE_12__* %525)
  %527 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %528 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %527, i32 0, i32 3
  %529 = load %struct.TYPE_12__*, %struct.TYPE_12__** %528, align 8
  %530 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %531 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %530, i32 0, i32 2
  store %struct.TYPE_12__* %529, %struct.TYPE_12__** %531, align 8
  br label %532

532:                                              ; preds = %522, %496
  %533 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %21, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* %22, align 4
  %536 = sub nsw i32 %535, 1
  %537 = load %struct.inode*, %struct.inode** %6, align 8
  %538 = getelementptr inbounds %struct.inode, %struct.inode* %537, i32 0, i32 1
  %539 = load %struct.super_block*, %struct.super_block** %538, align 8
  %540 = getelementptr inbounds %struct.super_block, %struct.super_block* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = ashr i32 %536, %541
  %543 = add nsw i32 %534, %542
  store i32 %543, i32* %20, align 4
  %544 = load %struct.inode*, %struct.inode** %6, align 8
  %545 = load i32, i32* %15, align 4
  %546 = load %struct.inode*, %struct.inode** %6, align 8
  %547 = getelementptr inbounds %struct.inode, %struct.inode* %546, i32 0, i32 1
  %548 = load %struct.super_block*, %struct.super_block** %547, align 8
  %549 = getelementptr inbounds %struct.super_block, %struct.super_block* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = ashr i32 %545, %550
  %552 = load i32*, i32** %10, align 8
  %553 = call %struct.TYPE_12__* @udf_bread(%struct.inode* %544, i32 %551, i32 1, i32* %552)
  %554 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %555 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %554, i32 0, i32 3
  store %struct.TYPE_12__* %553, %struct.TYPE_12__** %555, align 8
  %556 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %557 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %556, i32 0, i32 3
  %558 = load %struct.TYPE_12__*, %struct.TYPE_12__** %557, align 8
  %559 = icmp ne %struct.TYPE_12__* %558, null
  br i1 %559, label %561, label %560

560:                                              ; preds = %532
  br label %682

561:                                              ; preds = %532
  %562 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %563 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %603, label %566

566:                                              ; preds = %561
  %567 = load %struct.inode*, %struct.inode** %6, align 8
  %568 = call i32 @udf_next_aext(%struct.inode* %567, %struct.extent_position* %24, %struct.kernel_lb_addr* %21, i32* %22, i32 1)
  %569 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %570 = ashr i32 %569, 30
  %571 = icmp eq i32 %568, %570
  br i1 %571, label %572, label %584

572:                                              ; preds = %566
  %573 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %21, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = load i32, i32* %22, align 4
  %576 = sub nsw i32 %575, 1
  %577 = load %struct.inode*, %struct.inode** %6, align 8
  %578 = getelementptr inbounds %struct.inode, %struct.inode* %577, i32 0, i32 1
  %579 = load %struct.super_block*, %struct.super_block** %578, align 8
  %580 = getelementptr inbounds %struct.super_block, %struct.super_block* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = ashr i32 %576, %581
  %583 = add nsw i32 %574, %582
  store i32 %583, i32* %20, align 4
  br label %587

584:                                              ; preds = %566
  %585 = load i32, i32* %20, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %20, align 4
  br label %587

587:                                              ; preds = %584, %572
  %588 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %589 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %588, i32 0, i32 2
  %590 = load %struct.TYPE_12__*, %struct.TYPE_12__** %589, align 8
  %591 = call i32 @brelse(%struct.TYPE_12__* %590)
  %592 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %593 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %592, i32 0, i32 3
  %594 = load %struct.TYPE_12__*, %struct.TYPE_12__** %593, align 8
  %595 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %596 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %595, i32 0, i32 2
  store %struct.TYPE_12__* %594, %struct.TYPE_12__** %596, align 8
  %597 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %598 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %597, i32 0, i32 2
  %599 = load %struct.TYPE_12__*, %struct.TYPE_12__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = inttoptr i64 %601 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %602, %struct.fileIdentDesc** %12, align 8
  br label %620

603:                                              ; preds = %561
  %604 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %605 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %604, i32 0, i32 2
  %606 = load %struct.TYPE_12__*, %struct.TYPE_12__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = load %struct.super_block*, %struct.super_block** %11, align 8
  %610 = getelementptr inbounds %struct.super_block, %struct.super_block* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = sext i32 %611 to i64
  %613 = add nsw i64 %608, %612
  %614 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %615 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 8
  %617 = sext i32 %616 to i64
  %618 = add nsw i64 %613, %617
  %619 = inttoptr i64 %618 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %619, %struct.fileIdentDesc** %12, align 8
  br label %620

620:                                              ; preds = %603, %587
  br label %621

621:                                              ; preds = %620, %495
  %622 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %623 = call i32 @memset(%struct.fileIdentDesc* %622, i32 0, i32 32)
  %624 = load %struct.super_block*, %struct.super_block** %11, align 8
  %625 = call %struct.TYPE_13__* @UDF_SB(%struct.super_block* %624)
  %626 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 4
  %628 = icmp sge i32 %627, 512
  br i1 %628, label %629, label %635

629:                                              ; preds = %621
  %630 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %631 = bitcast %struct.fileIdentDesc* %630 to i8*
  %632 = load i32, i32* @TAG_IDENT_FID, align 4
  %633 = load i32, i32* %20, align 4
  %634 = call i32 @udf_new_tag(i8* %631, i32 %632, i32 3, i32 1, i32 %633, i32 4)
  br label %641

635:                                              ; preds = %621
  %636 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %637 = bitcast %struct.fileIdentDesc* %636 to i8*
  %638 = load i32, i32* @TAG_IDENT_FID, align 4
  %639 = load i32, i32* %20, align 4
  %640 = call i32 @udf_new_tag(i8* %637, i32 %638, i32 2, i32 1, i32 %639, i32 4)
  br label %641

641:                                              ; preds = %635, %629
  %642 = call i8* @cpu_to_le16(i32 1)
  %643 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %644 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %643, i32 0, i32 3
  store i8* %642, i8** %644, align 8
  %645 = load i32, i32* %14, align 4
  %646 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %647 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %646, i32 0, i32 0
  store i32 %645, i32* %647, align 8
  %648 = call i8* @cpu_to_le16(i32 0)
  %649 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %650 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %649, i32 0, i32 2
  store i8* %648, i8** %650, align 8
  %651 = load %struct.inode*, %struct.inode** %6, align 8
  %652 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %653 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %12, align 8
  %654 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %655 = load i8*, i8** %13, align 8
  %656 = call i32 @udf_write_fi(%struct.inode* %651, %struct.fileIdentDesc* %652, %struct.fileIdentDesc* %653, %struct.udf_fileident_bh* %654, i32* null, i8* %655)
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %678, label %658

658:                                              ; preds = %641
  %659 = load i32, i32* %17, align 4
  %660 = load %struct.inode*, %struct.inode** %6, align 8
  %661 = getelementptr inbounds %struct.inode, %struct.inode* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 8
  %663 = add nsw i32 %662, %659
  store i32 %663, i32* %661, align 8
  %664 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %665 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %664, i32 0, i32 0
  %666 = load i64, i64* %665, align 8
  %667 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %668 = icmp eq i64 %666, %667
  br i1 %668, label %669, label %675

669:                                              ; preds = %658
  %670 = load i32, i32* %17, align 4
  %671 = load %struct.udf_inode_info*, %struct.udf_inode_info** %25, align 8
  %672 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %671, i32 0, i32 2
  %673 = load i32, i32* %672, align 4
  %674 = add nsw i32 %673, %670
  store i32 %674, i32* %672, align 4
  br label %675

675:                                              ; preds = %669, %658
  %676 = load %struct.inode*, %struct.inode** %6, align 8
  %677 = call i32 @mark_inode_dirty(%struct.inode* %676)
  br label %700

678:                                              ; preds = %641
  %679 = load i32, i32* @EIO, align 4
  %680 = sub nsw i32 0, %679
  %681 = load i32*, i32** %10, align 8
  store i32 %680, i32* %681, align 4
  br label %682

682:                                              ; preds = %678, %560, %394, %269, %215, %194, %76, %58, %45
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %12, align 8
  %683 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %684 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %683, i32 0, i32 2
  %685 = load %struct.TYPE_12__*, %struct.TYPE_12__** %684, align 8
  %686 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %687 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %686, i32 0, i32 3
  %688 = load %struct.TYPE_12__*, %struct.TYPE_12__** %687, align 8
  %689 = icmp ne %struct.TYPE_12__* %685, %688
  br i1 %689, label %690, label %695

690:                                              ; preds = %682
  %691 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %692 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %691, i32 0, i32 3
  %693 = load %struct.TYPE_12__*, %struct.TYPE_12__** %692, align 8
  %694 = call i32 @brelse(%struct.TYPE_12__* %693)
  br label %695

695:                                              ; preds = %690, %682
  %696 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %697 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %696, i32 0, i32 2
  %698 = load %struct.TYPE_12__*, %struct.TYPE_12__** %697, align 8
  %699 = call i32 @brelse(%struct.TYPE_12__* %698)
  br label %700

700:                                              ; preds = %695, %675, %268
  %701 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %24, i32 0, i32 1
  %702 = load %struct.TYPE_12__*, %struct.TYPE_12__** %701, align 8
  %703 = call i32 @brelse(%struct.TYPE_12__* %702)
  %704 = load i8*, i8** %13, align 8
  %705 = call i32 @kfree(i8* %704)
  %706 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %12, align 8
  ret %struct.fileIdentDesc* %706
}

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @udf_put_filename(%struct.super_block*, i32, i8*, i32) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i32) #1

declare dso_local %struct.TYPE_12__* @udf_tread(%struct.super_block*, i32) #1

declare dso_local %struct.fileIdentDesc* @udf_fileident_read(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i8*) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @udf_expand_dir_adinicb(%struct.inode*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_current_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @udf_bread(%struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @memset(%struct.fileIdentDesc*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_new_tag(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
