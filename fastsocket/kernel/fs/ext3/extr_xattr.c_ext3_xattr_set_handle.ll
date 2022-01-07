; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_set_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_set_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ext3_xattr_info = type { i32, i8*, i8*, i64 }
%struct.ext3_xattr_ibody_find = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_18__ = type { i64 }
%struct.ext3_xattr_block_find = type { i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64 }
%struct.ext3_inode = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EXT3_STATE_NEW = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_xattr_set_handle(%struct.TYPE_19__* %0, %struct.inode* %1, i32 %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext3_xattr_info, align 8
  %17 = alloca %struct.ext3_xattr_ibody_find, align 8
  %18 = alloca %struct.ext3_xattr_block_find, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ext3_inode*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = getelementptr inbounds %struct.ext3_xattr_info, %struct.ext3_xattr_info* %16, i32 0, i32 0
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.ext3_xattr_info, %struct.ext3_xattr_info* %16, i32 0, i32 1
  %24 = load i8*, i8** %12, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds %struct.ext3_xattr_info, %struct.ext3_xattr_info* %16, i32 0, i32 2
  %26 = load i8*, i8** %13, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds %struct.ext3_xattr_info, %struct.ext3_xattr_info* %16, i32 0, i32 3
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 0
  %30 = bitcast %struct.TYPE_20__* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false)
  %31 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %32, align 8
  %36 = getelementptr inbounds %struct.ext3_xattr_block_find, %struct.ext3_xattr_block_find* %18, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.ext3_xattr_block_find, %struct.ext3_xattr_block_find* %18, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %39, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %7
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %272

48:                                               ; preds = %7
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = icmp sgt i32 %50, 255
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @ERANGE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %272

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = call %struct.TYPE_16__* @EXT3_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = call i32 @down_write(i32* %58)
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 0
  %62 = call i32 @ext3_get_inode_loc(%struct.inode* %60, %struct.TYPE_20__* %61)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %259

66:                                               ; preds = %55
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %68 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ext3_journal_get_write_access(%struct.TYPE_19__* %67, i32* %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %259

75:                                               ; preds = %66
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = call %struct.TYPE_16__* @EXT3_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EXT3_STATE_NEW, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 0
  %85 = call %struct.ext3_inode* @ext3_raw_inode(%struct.TYPE_20__* %84)
  store %struct.ext3_inode* %85, %struct.ext3_inode** %20, align 8
  %86 = load %struct.ext3_inode*, %struct.ext3_inode** %20, align 8
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_15__* @EXT3_SB(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memset(%struct.ext3_inode* %86, i32 0, i32 %92)
  %94 = load i32, i32* @EXT3_STATE_NEW, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call %struct.TYPE_16__* @EXT3_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %95
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %83, %75
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call i32 @ext3_xattr_ibody_find(%struct.inode* %102, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_ibody_find* %17)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %259

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = call i32 @ext3_xattr_block_find(%struct.inode* %113, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_block_find* %18)
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %259

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ext3_xattr_block_find, %struct.ext3_xattr_block_find* %18, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load i32, i32* @ENODATA, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @XATTR_REPLACE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %259

137:                                              ; preds = %129
  store i32 0, i32* %19, align 4
  %138 = load i8*, i8** %13, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %259

141:                                              ; preds = %137
  br label %151

142:                                              ; preds = %124, %119
  %143 = load i32, i32* @EEXIST, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @XATTR_CREATE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %259

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %141
  %152 = load i8*, i8** %13, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %174, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %161 = load %struct.inode*, %struct.inode** %10, align 8
  %162 = call i32 @ext3_xattr_ibody_set(%struct.TYPE_19__* %160, %struct.inode* %161, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_ibody_find* %17)
  store i32 %162, i32* %19, align 4
  br label %173

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.ext3_xattr_block_find, %struct.ext3_xattr_block_find* %18, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = load %struct.inode*, %struct.inode** %10, align 8
  %171 = call i32 @ext3_xattr_block_set(%struct.TYPE_19__* %169, %struct.inode* %170, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_block_find* %18)
  store i32 %171, i32* %19, align 4
  br label %172

172:                                              ; preds = %168, %163
  br label %173

173:                                              ; preds = %172, %159
  br label %233

174:                                              ; preds = %151
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %176 = load %struct.inode*, %struct.inode** %10, align 8
  %177 = call i32 @ext3_xattr_ibody_set(%struct.TYPE_19__* %175, %struct.inode* %176, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_ibody_find* %17)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.ext3_xattr_block_find, %struct.ext3_xattr_block_find* %18, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.ext3_xattr_info, %struct.ext3_xattr_info* %16, i32 0, i32 2
  store i8* null, i8** %186, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %188 = load %struct.inode*, %struct.inode** %10, align 8
  %189 = call i32 @ext3_xattr_block_set(%struct.TYPE_19__* %187, %struct.inode* %188, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_block_find* %18)
  store i32 %189, i32* %19, align 4
  br label %232

190:                                              ; preds = %180, %174
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* @ENOSPC, align 4
  %193 = sub nsw i32 0, %192
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %231

195:                                              ; preds = %190
  %196 = load %struct.inode*, %struct.inode** %10, align 8
  %197 = call %struct.TYPE_16__* @EXT3_I(%struct.inode* %196)
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.ext3_xattr_block_find, %struct.ext3_xattr_block_find* %18, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %201
  %207 = load %struct.inode*, %struct.inode** %10, align 8
  %208 = call i32 @ext3_xattr_block_find(%struct.inode* %207, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_block_find* %18)
  store i32 %208, i32* %19, align 4
  %209 = load i32, i32* %19, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %259

212:                                              ; preds = %206
  br label %213

213:                                              ; preds = %212, %201, %195
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %215 = load %struct.inode*, %struct.inode** %10, align 8
  %216 = call i32 @ext3_xattr_block_set(%struct.TYPE_19__* %214, %struct.inode* %215, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_block_find* %18)
  store i32 %216, i32* %19, align 4
  %217 = load i32, i32* %19, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %259

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.ext3_xattr_info, %struct.ext3_xattr_info* %16, i32 0, i32 2
  store i8* null, i8** %226, align 8
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %228 = load %struct.inode*, %struct.inode** %10, align 8
  %229 = call i32 @ext3_xattr_ibody_set(%struct.TYPE_19__* %227, %struct.inode* %228, %struct.ext3_xattr_info* %16, %struct.ext3_xattr_ibody_find* %17)
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %225, %220
  br label %231

231:                                              ; preds = %230, %190
  br label %232

232:                                              ; preds = %231, %185
  br label %233

233:                                              ; preds = %232, %173
  %234 = load i32, i32* %19, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %258, label %236

236:                                              ; preds = %233
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %238 = load %struct.inode*, %struct.inode** %10, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ext3_xattr_update_super_block(%struct.TYPE_19__* %237, i32 %240)
  %242 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %243 = load %struct.inode*, %struct.inode** %10, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %246 = load %struct.inode*, %struct.inode** %10, align 8
  %247 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 0
  %248 = call i32 @ext3_mark_iloc_dirty(%struct.TYPE_19__* %245, %struct.inode* %246, %struct.TYPE_20__* %247)
  store i32 %248, i32* %19, align 4
  %249 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 0
  store i32* null, i32** %250, align 8
  %251 = load %struct.inode*, %struct.inode** %10, align 8
  %252 = call i64 @IS_SYNC(%struct.inode* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %236
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  store i32 1, i32* %256, align 4
  br label %257

257:                                              ; preds = %254, %236
  br label %258

258:                                              ; preds = %257, %233
  br label %259

259:                                              ; preds = %258, %219, %211, %149, %140, %136, %118, %106, %74, %65
  %260 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %17, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @brelse(i32* %262)
  %264 = getelementptr inbounds %struct.ext3_xattr_block_find, %struct.ext3_xattr_block_find* %18, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @brelse(i32* %265)
  %267 = load %struct.inode*, %struct.inode** %10, align 8
  %268 = call %struct.TYPE_16__* @EXT3_I(%struct.inode* %267)
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = call i32 @up_write(i32* %269)
  %271 = load i32, i32* %19, align 4
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %259, %52, %45
  %273 = load i32, i32* %8, align 4
  ret i32 %273
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local %struct.TYPE_16__* @EXT3_I(%struct.inode*) #2

declare dso_local i32 @ext3_get_inode_loc(%struct.inode*, %struct.TYPE_20__*) #2

declare dso_local i32 @ext3_journal_get_write_access(%struct.TYPE_19__*, i32*) #2

declare dso_local %struct.ext3_inode* @ext3_raw_inode(%struct.TYPE_20__*) #2

declare dso_local i32 @memset(%struct.ext3_inode*, i32, i32) #2

declare dso_local %struct.TYPE_15__* @EXT3_SB(i32) #2

declare dso_local i32 @ext3_xattr_ibody_find(%struct.inode*, %struct.ext3_xattr_info*, %struct.ext3_xattr_ibody_find*) #2

declare dso_local i32 @ext3_xattr_block_find(%struct.inode*, %struct.ext3_xattr_info*, %struct.ext3_xattr_block_find*) #2

declare dso_local i32 @ext3_xattr_ibody_set(%struct.TYPE_19__*, %struct.inode*, %struct.ext3_xattr_info*, %struct.ext3_xattr_ibody_find*) #2

declare dso_local i32 @ext3_xattr_block_set(%struct.TYPE_19__*, %struct.inode*, %struct.ext3_xattr_info*, %struct.ext3_xattr_block_find*) #2

declare dso_local i32 @ext3_xattr_update_super_block(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @ext3_mark_iloc_dirty(%struct.TYPE_19__*, %struct.inode*, %struct.TYPE_20__*) #2

declare dso_local i64 @IS_SYNC(%struct.inode*) #2

declare dso_local i32 @brelse(i32*) #2

declare dso_local i32 @up_write(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
