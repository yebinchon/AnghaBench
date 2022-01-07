; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_add_aext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_add_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.extent_position = type { i32, %struct.buffer_head*, %struct.kernel_lb_addr }
%struct.buffer_head = type { i8* }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.short_ad = type { i8*, i8* }
%struct.long_ad = type { i8*, i32, i8* }
%struct.allocExtDesc = type { i8*, i8* }
%struct.udf_inode_info = type { i8*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@UDF_FLAG_STRICT = common dso_local global i32 0, align 4
@TAG_IDENT_AED = common dso_local global i32 0, align 4
@EXT_NEXT_EXTENT_ALLOCDECS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_add_aext(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.short_ad*, align 8
  %14 = alloca %struct.long_ad*, align 8
  %15 = alloca %struct.allocExtDesc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.udf_inode_info*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.kernel_lb_addr, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_position* %1, %struct.extent_position** %8, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.short_ad* null, %struct.short_ad** %13, align 8
  store %struct.long_ad* null, %struct.long_ad** %14, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %25)
  store %struct.udf_inode_info* %26, %struct.udf_inode_info** %18, align 8
  %27 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %28 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %27, i32 0, i32 1
  %29 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %5
  %32 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %33 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %37 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %40)
  %42 = sub nsw i32 %39, %41
  %43 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %44 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %17, align 8
  br label %59

48:                                               ; preds = %5
  %49 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %50 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %49, i32 0, i32 1
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %55 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8* %58, i8** %17, align 8
  br label %59

59:                                               ; preds = %48, %31
  %60 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %61 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 16, i32* %12, align 4
  br label %73

65:                                               ; preds = %59
  %66 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %67 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 129
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 24, i32* %12, align 4
  br label %72

71:                                               ; preds = %65
  store i32 -1, i32* %6, align 4
  br label %437

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72, %64
  %74 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %75 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %76, %78
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %79, %84
  br i1 %85, label %86, label %360

86:                                               ; preds = %73
  %87 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %88 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %87, i32 0, i32 2
  %89 = bitcast %struct.kernel_lb_addr* %24 to i8*
  %90 = bitcast %struct.kernel_lb_addr* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 8 %90, i64 8, i1 false)
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %24, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %24, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @udf_new_block(%struct.TYPE_9__* %93, i32* null, i32 %95, i32 %97, i32* %22)
  %99 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %100 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %103 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %86
  store i32 -1, i32* %6, align 4
  br label %437

108:                                              ; preds = %86
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %116 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %115, i32 0, i32 2
  %117 = call i32 @udf_get_lb_pblock(%struct.TYPE_9__* %114, %struct.kernel_lb_addr* %116, i32 0)
  %118 = call %struct.buffer_head* @udf_tgetblk(%struct.TYPE_9__* %111, i32 %117)
  store %struct.buffer_head* %118, %struct.buffer_head** %21, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %120 = icmp ne %struct.buffer_head* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %108
  store i32 -1, i32* %6, align 4
  br label %437

122:                                              ; preds = %108
  %123 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %124 = call i32 @lock_buffer(%struct.buffer_head* %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %126 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memset(i8* %127, i32 0, i32 %132)
  %134 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %135 = call i32 @set_buffer_uptodate(%struct.buffer_head* %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %137 = call i32 @unlock_buffer(%struct.buffer_head* %136)
  %138 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %139 = load %struct.inode*, %struct.inode** %7, align 8
  %140 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %138, %struct.inode* %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %142 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = bitcast i8* %143 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %144, %struct.allocExtDesc** %15, align 8
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %149 = call i32 @UDF_QUERY_FLAG(%struct.TYPE_9__* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %122
  %152 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %24, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @cpu_to_le32(i32 %153)
  %155 = load %struct.allocExtDesc*, %struct.allocExtDesc** %15, align 8
  %156 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %151, %122
  %158 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %159 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.inode*, %struct.inode** %7, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %162, %167
  br i1 %168, label %169, label %196

169:                                              ; preds = %157
  %170 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %171 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %23, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = load %struct.allocExtDesc*, %struct.allocExtDesc** %15, align 8
  %176 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = sub i64 0, %179
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  store i8* %181, i8** %19, align 8
  %182 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %183 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 16
  store i8* %185, i8** %20, align 8
  %186 = load i8*, i8** %20, align 8
  %187 = load i8*, i8** %19, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @memcpy(i8* %186, i8* %187, i32 %188)
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = add i64 16, %191
  %193 = trunc i64 %192 to i32
  %194 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %195 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %232

196:                                              ; preds = %157
  %197 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %198 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %23, align 4
  %202 = call i8* @cpu_to_le32(i32 0)
  %203 = load %struct.allocExtDesc*, %struct.allocExtDesc** %15, align 8
  %204 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load i8*, i8** %17, align 8
  store i8* %205, i8** %19, align 8
  %206 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %207 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %206, i32 0, i32 0
  store i32 16, i32* %207, align 8
  %208 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %209 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %208, i32 0, i32 1
  %210 = load %struct.buffer_head*, %struct.buffer_head** %209, align 8
  %211 = icmp ne %struct.buffer_head* %210, null
  br i1 %211, label %212, label %223

212:                                              ; preds = %196
  %213 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %214 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %213, i32 0, i32 1
  %215 = load %struct.buffer_head*, %struct.buffer_head** %214, align 8
  %216 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = bitcast i8* %217 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %218, %struct.allocExtDesc** %15, align 8
  %219 = load %struct.allocExtDesc*, %struct.allocExtDesc** %15, align 8
  %220 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %219, i32 0, i32 0
  %221 = load i32, i32* %12, align 4
  %222 = call i32 @le32_add_cpu(i8** %220, i32 %221)
  br label %231

223:                                              ; preds = %196
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %226 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 4
  %229 = load %struct.inode*, %struct.inode** %7, align 8
  %230 = call i32 @mark_inode_dirty(%struct.inode* %229)
  br label %231

231:                                              ; preds = %223, %212
  br label %232

232:                                              ; preds = %231, %169
  %233 = load %struct.inode*, %struct.inode** %7, align 8
  %234 = getelementptr inbounds %struct.inode, %struct.inode* %233, i32 0, i32 0
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = call %struct.TYPE_10__* @UDF_SB(%struct.TYPE_9__* %235)
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp sge i32 %238, 512
  br i1 %239, label %240, label %250

240:                                              ; preds = %232
  %241 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %242 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* @TAG_IDENT_AED, align 4
  %245 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %246 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @udf_new_tag(i8* %243, i32 %244, i32 3, i32 1, i32 %248, i32 4)
  br label %260

250:                                              ; preds = %232
  %251 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %252 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* @TAG_IDENT_AED, align 4
  %255 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %256 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @udf_new_tag(i8* %253, i32 %254, i32 2, i32 1, i32 %258, i32 4)
  br label %260

260:                                              ; preds = %250, %240
  %261 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %262 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  switch i32 %263, label %308 [
    i32 128, label %264
    i32 129, label %284
  ]

264:                                              ; preds = %260
  %265 = load i8*, i8** %19, align 8
  %266 = bitcast i8* %265 to %struct.short_ad*
  store %struct.short_ad* %266, %struct.short_ad** %13, align 8
  %267 = load i32, i32* @EXT_NEXT_EXTENT_ALLOCDECS, align 4
  %268 = load %struct.inode*, %struct.inode** %7, align 8
  %269 = getelementptr inbounds %struct.inode, %struct.inode* %268, i32 0, i32 0
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %267, %272
  %274 = call i8* @cpu_to_le32(i32 %273)
  %275 = load %struct.short_ad*, %struct.short_ad** %13, align 8
  %276 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  %277 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %278 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i8* @cpu_to_le32(i32 %280)
  %282 = load %struct.short_ad*, %struct.short_ad** %13, align 8
  %283 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %282, i32 0, i32 0
  store i8* %281, i8** %283, align 8
  br label %308

284:                                              ; preds = %260
  %285 = load i8*, i8** %19, align 8
  %286 = bitcast i8* %285 to %struct.long_ad*
  store %struct.long_ad* %286, %struct.long_ad** %14, align 8
  %287 = load i32, i32* @EXT_NEXT_EXTENT_ALLOCDECS, align 4
  %288 = load %struct.inode*, %struct.inode** %7, align 8
  %289 = getelementptr inbounds %struct.inode, %struct.inode* %288, i32 0, i32 0
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %287, %292
  %294 = call i8* @cpu_to_le32(i32 %293)
  %295 = load %struct.long_ad*, %struct.long_ad** %14, align 8
  %296 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %295, i32 0, i32 2
  store i8* %294, i8** %296, align 8
  %297 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %298 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %297, i32 0, i32 2
  %299 = bitcast %struct.kernel_lb_addr* %298 to i64*
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @cpu_to_lelb(i64 %300)
  %302 = load %struct.long_ad*, %struct.long_ad** %14, align 8
  %303 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 8
  %304 = load %struct.long_ad*, %struct.long_ad** %14, align 8
  %305 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @memset(i8* %306, i32 0, i32 8)
  br label %308

308:                                              ; preds = %260, %284, %264
  %309 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %310 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %309, i32 0, i32 1
  %311 = load %struct.buffer_head*, %struct.buffer_head** %310, align 8
  %312 = icmp ne %struct.buffer_head* %311, null
  br i1 %312, label %313, label %353

313:                                              ; preds = %308
  %314 = load %struct.inode*, %struct.inode** %7, align 8
  %315 = getelementptr inbounds %struct.inode, %struct.inode* %314, i32 0, i32 0
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %315, align 8
  %317 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %318 = call i32 @UDF_QUERY_FLAG(%struct.TYPE_9__* %316, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %313
  %321 = load %struct.inode*, %struct.inode** %7, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 0
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %322, align 8
  %324 = call %struct.TYPE_10__* @UDF_SB(%struct.TYPE_9__* %323)
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp sge i32 %326, 513
  br i1 %327, label %328, label %336

328:                                              ; preds = %320, %313
  %329 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %330 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %329, i32 0, i32 1
  %331 = load %struct.buffer_head*, %struct.buffer_head** %330, align 8
  %332 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = load i32, i32* %23, align 4
  %335 = call i32 @udf_update_tag(i8* %333, i32 %334)
  br label %343

336:                                              ; preds = %320
  %337 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %338 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %337, i32 0, i32 1
  %339 = load %struct.buffer_head*, %struct.buffer_head** %338, align 8
  %340 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %339, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @udf_update_tag(i8* %341, i32 16)
  br label %343

343:                                              ; preds = %336, %328
  %344 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %345 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %344, i32 0, i32 1
  %346 = load %struct.buffer_head*, %struct.buffer_head** %345, align 8
  %347 = load %struct.inode*, %struct.inode** %7, align 8
  %348 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %346, %struct.inode* %347)
  %349 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %350 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %349, i32 0, i32 1
  %351 = load %struct.buffer_head*, %struct.buffer_head** %350, align 8
  %352 = call i32 @brelse(%struct.buffer_head* %351)
  br label %356

353:                                              ; preds = %308
  %354 = load %struct.inode*, %struct.inode** %7, align 8
  %355 = call i32 @mark_inode_dirty(%struct.inode* %354)
  br label %356

356:                                              ; preds = %353, %343
  %357 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %358 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %359 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %358, i32 0, i32 1
  store %struct.buffer_head* %357, %struct.buffer_head** %359, align 8
  br label %360

360:                                              ; preds = %356, %73
  %361 = load %struct.inode*, %struct.inode** %7, align 8
  %362 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %363 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* %11, align 4
  %366 = call i32 @udf_write_aext(%struct.inode* %361, %struct.extent_position* %362, %struct.kernel_lb_addr* %363, i32 %364, i32 %365)
  store i32 %366, i32* %16, align 4
  %367 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %368 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %367, i32 0, i32 1
  %369 = load %struct.buffer_head*, %struct.buffer_head** %368, align 8
  %370 = icmp ne %struct.buffer_head* %369, null
  br i1 %370, label %379, label %371

371:                                              ; preds = %360
  %372 = load i32, i32* %12, align 4
  %373 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %374 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = load %struct.inode*, %struct.inode** %7, align 8
  %378 = call i32 @mark_inode_dirty(%struct.inode* %377)
  br label %435

379:                                              ; preds = %360
  %380 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %381 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %380, i32 0, i32 1
  %382 = load %struct.buffer_head*, %struct.buffer_head** %381, align 8
  %383 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = bitcast i8* %384 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %385, %struct.allocExtDesc** %15, align 8
  %386 = load %struct.allocExtDesc*, %struct.allocExtDesc** %15, align 8
  %387 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %386, i32 0, i32 0
  %388 = load i32, i32* %12, align 4
  %389 = call i32 @le32_add_cpu(i8** %387, i32 %388)
  %390 = load %struct.inode*, %struct.inode** %7, align 8
  %391 = getelementptr inbounds %struct.inode, %struct.inode* %390, i32 0, i32 0
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %391, align 8
  %393 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %394 = call i32 @UDF_QUERY_FLAG(%struct.TYPE_9__* %392, i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %379
  %397 = load %struct.inode*, %struct.inode** %7, align 8
  %398 = getelementptr inbounds %struct.inode, %struct.inode* %397, i32 0, i32 0
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %398, align 8
  %400 = call %struct.TYPE_10__* @UDF_SB(%struct.TYPE_9__* %399)
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = icmp sge i32 %402, 513
  br i1 %403, label %404, label %422

404:                                              ; preds = %396, %379
  %405 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %406 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %405, i32 0, i32 1
  %407 = load %struct.buffer_head*, %struct.buffer_head** %406, align 8
  %408 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %411 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* %11, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %404
  br label %418

416:                                              ; preds = %404
  %417 = load i32, i32* %12, align 4
  br label %418

418:                                              ; preds = %416, %415
  %419 = phi i32 [ 0, %415 ], [ %417, %416 ]
  %420 = add nsw i32 %412, %419
  %421 = call i32 @udf_update_tag(i8* %409, i32 %420)
  br label %429

422:                                              ; preds = %396
  %423 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %424 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %423, i32 0, i32 1
  %425 = load %struct.buffer_head*, %struct.buffer_head** %424, align 8
  %426 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %425, i32 0, i32 0
  %427 = load i8*, i8** %426, align 8
  %428 = call i32 @udf_update_tag(i8* %427, i32 16)
  br label %429

429:                                              ; preds = %422, %418
  %430 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %431 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %430, i32 0, i32 1
  %432 = load %struct.buffer_head*, %struct.buffer_head** %431, align 8
  %433 = load %struct.inode*, %struct.inode** %7, align 8
  %434 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %432, %struct.inode* %433)
  br label %435

435:                                              ; preds = %429, %371
  %436 = load i32, i32* %16, align 4
  store i32 %436, i32* %6, align 4
  br label %437

437:                                              ; preds = %435, %121, %107, %71
  %438 = load i32, i32* %6, align 4
  ret i32 %438
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_new_block(%struct.TYPE_9__*, i32*, i32, i32, i32*) #1

declare dso_local %struct.buffer_head* @udf_tgetblk(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.TYPE_9__*, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @UDF_QUERY_FLAG(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @le32_add_cpu(i8**, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @UDF_SB(%struct.TYPE_9__*) #1

declare dso_local i32 @udf_new_tag(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_lelb(i64) #1

declare dso_local i32 @udf_update_tag(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
