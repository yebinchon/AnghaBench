; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.TYPE_7__*, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @udf_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.udf_fileident_bh, align 8
  %12 = alloca %struct.udf_fileident_bh, align 8
  %13 = alloca %struct.fileIdentDesc*, align 8
  %14 = alloca %struct.fileIdentDesc*, align 8
  %15 = alloca %struct.fileIdentDesc*, align 8
  %16 = alloca %struct.fileIdentDesc, align 4
  %17 = alloca %struct.fileIdentDesc, align 4
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.kernel_lb_addr, align 4
  %21 = alloca %struct.udf_inode_info*, align 8
  %22 = alloca %struct.kernel_lb_addr, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.kernel_lb_addr, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %9, align 8
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %10, align 8
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %13, align 8
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %14, align 8
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %19, align 4
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %33)
  store %struct.udf_inode_info* %34, %struct.udf_inode_info** %21, align 8
  %35 = call i32 (...) @lock_kernel()
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = call %struct.fileIdentDesc* @udf_find_entry(%struct.inode* %36, i32* %38, %struct.udf_fileident_bh* %11, %struct.fileIdentDesc* %16)
  store %struct.fileIdentDesc* %39, %struct.fileIdentDesc** %13, align 8
  %40 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %41 = icmp ne %struct.fileIdentDesc* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.buffer_head*
  %52 = call i32 @brelse(%struct.buffer_head* %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.buffer_head*
  %57 = call i32 @brelse(%struct.buffer_head* %56)
  br label %58

58:                                               ; preds = %53, %4
  %59 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %16, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @lelb_to_cpu(i32 %61)
  %63 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %22, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = bitcast %struct.kernel_lb_addr* %20 to i8*
  %65 = bitcast %struct.kernel_lb_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %67 = icmp ne %struct.fileIdentDesc* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i64 @udf_get_lb_pblock(%struct.TYPE_7__* %71, %struct.kernel_lb_addr* %20, i32 0)
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68, %58
  br label %330

78:                                               ; preds = %68
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = load %struct.dentry*, %struct.dentry** %8, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 0
  %82 = call %struct.fileIdentDesc* @udf_find_entry(%struct.inode* %79, i32* %81, %struct.udf_fileident_bh* %12, %struct.fileIdentDesc* %17)
  store %struct.fileIdentDesc* %82, %struct.fileIdentDesc** %14, align 8
  %83 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %14, align 8
  %84 = icmp ne %struct.fileIdentDesc* %83, null
  br i1 %84, label %85, label %105

85:                                               ; preds = %78
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  %87 = icmp ne %struct.inode* %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %12, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %12, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %90, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %12, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.buffer_head*
  %98 = call i32 @brelse(%struct.buffer_head* %97)
  br label %99

99:                                               ; preds = %94, %88
  %100 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %12, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.buffer_head*
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %14, align 8
  br label %104

104:                                              ; preds = %99, %85
  br label %105

105:                                              ; preds = %104, %78
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @S_ISDIR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %200

111:                                              ; preds = %105
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = call i32 @udf_ext0_offset(%struct.inode* %112)
  store i32 %113, i32* %23, align 4
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = icmp ne %struct.inode* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i32, i32* @ENOTEMPTY, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %19, align 4
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = call i32 @empty_dir(%struct.inode* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  br label %330

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %111
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %19, align 4
  %127 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %128 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %124
  %133 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %134 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %138 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i64 4, i64 4
  %143 = sub i64 %136, %142
  %144 = load %struct.inode*, %struct.inode** %9, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 2
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.fileIdentDesc* @udf_get_fileident(i64 %143, i32 %148, i32* %23)
  store %struct.fileIdentDesc* %149, %struct.fileIdentDesc** %15, align 8
  br label %166

150:                                              ; preds = %124
  %151 = load %struct.inode*, %struct.inode** %9, align 8
  %152 = call %struct.buffer_head* @udf_bread(%struct.inode* %151, i32 0, i32 0, i32* %19)
  store %struct.buffer_head* %152, %struct.buffer_head** %18, align 8
  %153 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %154 = icmp ne %struct.buffer_head* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  br label %330

156:                                              ; preds = %150
  %157 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %158 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.inode*, %struct.inode** %9, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.fileIdentDesc* @udf_get_fileident(i64 %159, i32 %164, i32* %23)
  store %struct.fileIdentDesc* %165, %struct.fileIdentDesc** %15, align 8
  br label %166

166:                                              ; preds = %156, %132
  %167 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %15, align 8
  %168 = icmp ne %struct.fileIdentDesc* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  br label %330

170:                                              ; preds = %166
  %171 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %15, align 8
  %172 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @lelb_to_cpu(i32 %174)
  %176 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %24, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = bitcast %struct.kernel_lb_addr* %20 to i8*
  %178 = bitcast %struct.kernel_lb_addr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 4, i1 false)
  %179 = load %struct.inode*, %struct.inode** %9, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 2
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = call i64 @udf_get_lb_pblock(%struct.TYPE_7__* %181, %struct.kernel_lb_addr* %20, i32 0)
  %183 = load %struct.inode*, %struct.inode** %5, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %182, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %170
  br label %330

188:                                              ; preds = %170
  %189 = load i32, i32* @EMLINK, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %19, align 4
  %191 = load %struct.inode*, %struct.inode** %10, align 8
  %192 = icmp ne %struct.inode* %191, null
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = load %struct.inode*, %struct.inode** %7, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %196, 4095
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %330

199:                                              ; preds = %193, %188
  br label %200

200:                                              ; preds = %199, %105
  %201 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %14, align 8
  %202 = icmp ne %struct.fileIdentDesc* %201, null
  br i1 %202, label %211, label %203

203:                                              ; preds = %200
  %204 = load %struct.inode*, %struct.inode** %7, align 8
  %205 = load %struct.dentry*, %struct.dentry** %8, align 8
  %206 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %204, %struct.dentry* %205, %struct.udf_fileident_bh* %12, %struct.fileIdentDesc* %17, i32* %19)
  store %struct.fileIdentDesc* %206, %struct.fileIdentDesc** %14, align 8
  %207 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %14, align 8
  %208 = icmp ne %struct.fileIdentDesc* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  br label %330

210:                                              ; preds = %203
  br label %211

211:                                              ; preds = %210, %200
  %212 = load %struct.inode*, %struct.inode** %9, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 2
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = call i8* @current_fs_time(%struct.TYPE_7__* %214)
  %216 = load %struct.inode*, %struct.inode** %9, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 4
  store i8* %215, i8** %217, align 8
  %218 = load %struct.inode*, %struct.inode** %9, align 8
  %219 = call i32 @mark_inode_dirty(%struct.inode* %218)
  %220 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %16, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %17, i32 0, i32 3
  store i32 %221, i32* %222, align 4
  %223 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %16, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %17, i32 0, i32 2
  store i32 %224, i32* %225, align 4
  %226 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %17, i32 0, i32 1
  %227 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %16, i32 0, i32 1
  %228 = call i32 @memcpy(%struct.TYPE_8__* %226, %struct.TYPE_8__* %227, i32 4)
  %229 = load %struct.inode*, %struct.inode** %7, align 8
  %230 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %14, align 8
  %231 = call i32 @udf_write_fi(%struct.inode* %229, %struct.fileIdentDesc* %17, %struct.fileIdentDesc* %230, %struct.udf_fileident_bh* %12, i32* null, i32* null)
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = load %struct.dentry*, %struct.dentry** %6, align 8
  %234 = getelementptr inbounds %struct.dentry, %struct.dentry* %233, i32 0, i32 0
  %235 = call %struct.fileIdentDesc* @udf_find_entry(%struct.inode* %232, i32* %234, %struct.udf_fileident_bh* %11, %struct.fileIdentDesc* %16)
  store %struct.fileIdentDesc* %235, %struct.fileIdentDesc** %13, align 8
  %236 = load %struct.inode*, %struct.inode** %5, align 8
  %237 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %238 = call i32 @udf_delete_entry(%struct.inode* %236, %struct.fileIdentDesc* %237, %struct.udf_fileident_bh* %11, %struct.fileIdentDesc* %16)
  %239 = load %struct.inode*, %struct.inode** %10, align 8
  %240 = icmp ne %struct.inode* %239, null
  br i1 %240, label %241, label %250

241:                                              ; preds = %211
  %242 = load %struct.inode*, %struct.inode** %10, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 2
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = call i8* @current_fs_time(%struct.TYPE_7__* %244)
  %246 = load %struct.inode*, %struct.inode** %10, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 4
  store i8* %245, i8** %247, align 8
  %248 = load %struct.inode*, %struct.inode** %10, align 8
  %249 = call i32 @inode_dec_link_count(%struct.inode* %248)
  br label %250

250:                                              ; preds = %241, %211
  %251 = load %struct.inode*, %struct.inode** %5, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 2
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = call i8* @current_fs_time(%struct.TYPE_7__* %253)
  %255 = load %struct.inode*, %struct.inode** %5, align 8
  %256 = getelementptr inbounds %struct.inode, %struct.inode* %255, i32 0, i32 3
  store i8* %254, i8** %256, align 8
  %257 = load %struct.inode*, %struct.inode** %5, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 4
  store i8* %254, i8** %258, align 8
  %259 = load %struct.inode*, %struct.inode** %5, align 8
  %260 = call i32 @mark_inode_dirty(%struct.inode* %259)
  %261 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %15, align 8
  %262 = icmp ne %struct.fileIdentDesc* %261, null
  br i1 %262, label %263, label %310

263:                                              ; preds = %250
  %264 = load %struct.inode*, %struct.inode** %7, align 8
  %265 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %264)
  %266 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @cpu_to_lelb(i32 %267)
  %269 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %15, align 8
  %270 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  store i32 %268, i32* %271, align 4
  %272 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %15, align 8
  %273 = bitcast %struct.fileIdentDesc* %272 to i8*
  %274 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %15, align 8
  %275 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @le16_to_cpu(i32 %276)
  %278 = sext i32 %277 to i64
  %279 = add i64 16, %278
  %280 = add i64 %279, 3
  %281 = and i64 %280, -4
  %282 = trunc i64 %281 to i32
  %283 = call i32 @udf_update_tag(i8* %273, i32 %282)
  %284 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %285 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %263
  %290 = load %struct.inode*, %struct.inode** %9, align 8
  %291 = call i32 @mark_inode_dirty(%struct.inode* %290)
  br label %296

292:                                              ; preds = %263
  %293 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %294 = load %struct.inode*, %struct.inode** %9, align 8
  %295 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %293, %struct.inode* %294)
  br label %296

296:                                              ; preds = %292, %289
  %297 = load %struct.inode*, %struct.inode** %5, align 8
  %298 = call i32 @inode_dec_link_count(%struct.inode* %297)
  %299 = load %struct.inode*, %struct.inode** %10, align 8
  %300 = icmp ne %struct.inode* %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load %struct.inode*, %struct.inode** %10, align 8
  %303 = call i32 @inode_dec_link_count(%struct.inode* %302)
  br label %309

304:                                              ; preds = %296
  %305 = load %struct.inode*, %struct.inode** %7, align 8
  %306 = call i32 @inc_nlink(%struct.inode* %305)
  %307 = load %struct.inode*, %struct.inode** %7, align 8
  %308 = call i32 @mark_inode_dirty(%struct.inode* %307)
  br label %309

309:                                              ; preds = %304, %301
  br label %310

310:                                              ; preds = %309, %250
  %311 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %312 = icmp ne %struct.fileIdentDesc* %311, null
  br i1 %312, label %313, label %329

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %315, %317
  br i1 %318, label %319, label %324

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = inttoptr i64 %321 to %struct.buffer_head*
  %323 = call i32 @brelse(%struct.buffer_head* %322)
  br label %324

324:                                              ; preds = %319, %313
  %325 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = inttoptr i64 %326 to %struct.buffer_head*
  %328 = call i32 @brelse(%struct.buffer_head* %327)
  br label %329

329:                                              ; preds = %324, %310
  store i32 0, i32* %19, align 4
  br label %330

330:                                              ; preds = %329, %209, %198, %187, %169, %155, %122, %77
  %331 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %332 = call i32 @brelse(%struct.buffer_head* %331)
  %333 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %14, align 8
  %334 = icmp ne %struct.fileIdentDesc* %333, null
  br i1 %334, label %335, label %351

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %12, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %12, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %337, %339
  br i1 %340, label %341, label %346

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %12, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = inttoptr i64 %343 to %struct.buffer_head*
  %345 = call i32 @brelse(%struct.buffer_head* %344)
  br label %346

346:                                              ; preds = %341, %335
  %347 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %12, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = inttoptr i64 %348 to %struct.buffer_head*
  %350 = call i32 @brelse(%struct.buffer_head* %349)
  br label %351

351:                                              ; preds = %346, %330
  %352 = call i32 (...) @unlock_kernel()
  %353 = load i32, i32* %19, align 4
  ret i32 %353
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.fileIdentDesc* @udf_find_entry(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @udf_get_lb_pblock(%struct.TYPE_7__*, %struct.kernel_lb_addr*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #1

declare dso_local i32 @empty_dir(%struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_get_fileident(i64, i32, i32*) #1

declare dso_local %struct.buffer_head* @udf_bread(%struct.inode*, i32, i32, i32*) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i8* @current_fs_time(%struct.TYPE_7__*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

declare dso_local i32 @udf_delete_entry(%struct.inode*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local i32 @udf_update_tag(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
