; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_set_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_set_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_xattr_info = type { i32, i8*, i8*, i64 }
%struct.ext4_xattr_ibody_find = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64 }
%struct.ext4_xattr_block_find = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.ext4_inode = type { i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EXT4_STATE_NO_EXPAND = common dso_local global i32 0, align 4
@EXT4_STATE_NEW = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_xattr_set_handle(i32* %0, %struct.inode* %1, i32 %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_xattr_info, align 8
  %17 = alloca %struct.ext4_xattr_ibody_find, align 8
  %18 = alloca %struct.ext4_xattr_block_find, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ext4_inode*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 0
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 1
  %25 = load i8*, i8** %12, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 2
  %27 = load i8*, i8** %13, align 8
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 3
  %29 = load i64, i64* %14, align 8
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %31 = bitcast %struct.TYPE_10__* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 8, i1 false)
  %32 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* @ENODATA, align 4
  %35 = sub nsw i32 0, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %33, align 8
  %37 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %41 = load i32, i32* @ENODATA, align 4
  %42 = sub nsw i32 0, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %40, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %7
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %287

49:                                               ; preds = %7
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = icmp sgt i32 %51, 255
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @ERANGE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %287

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call %struct.TYPE_12__* @EXT4_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = call i32 @down_write(i32* %59)
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load i32, i32* @EXT4_STATE_NO_EXPAND, align 4
  %63 = call i64 @ext4_test_inode_state(%struct.inode* %61, i32 %62)
  store i64 %63, i64* %19, align 8
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = load i32, i32* @EXT4_STATE_NO_EXPAND, align 4
  %66 = call i32 @ext4_set_inode_state(%struct.inode* %64, i32 %65)
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %69 = call i32 @ext4_get_inode_loc(%struct.inode* %67, %struct.TYPE_10__* %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  br label %267

73:                                               ; preds = %56
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @ext4_journal_get_write_access(i32* %74, i32* %77)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %267

82:                                               ; preds = %73
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = load i32, i32* @EXT4_STATE_NEW, align 4
  %85 = call i64 @ext4_test_inode_state(%struct.inode* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %89 = call %struct.ext4_inode* @ext4_raw_inode(%struct.TYPE_10__* %88)
  store %struct.ext4_inode* %89, %struct.ext4_inode** %21, align 8
  %90 = load %struct.ext4_inode*, %struct.ext4_inode** %21, align 8
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.TYPE_11__* @EXT4_SB(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memset(%struct.ext4_inode* %90, i32 0, i32 %96)
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = load i32, i32* @EXT4_STATE_NEW, align 4
  %100 = call i32 @ext4_clear_inode_state(%struct.inode* %98, i32 %99)
  br label %101

101:                                              ; preds = %87, %82
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call i32 @ext4_xattr_ibody_find(%struct.inode* %102, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_ibody_find* %17)
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %267

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = call i32 @ext4_xattr_block_find(%struct.inode* %113, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %114, i32* %20, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %267

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load i32, i32* @ENODATA, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @XATTR_REPLACE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %267

137:                                              ; preds = %129
  store i32 0, i32* %20, align 4
  %138 = load i8*, i8** %13, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %267

141:                                              ; preds = %137
  br label %151

142:                                              ; preds = %124, %119
  %143 = load i32, i32* @EEXIST, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @XATTR_CREATE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %267

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %141
  %152 = load i8*, i8** %13, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %174, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %154
  %160 = load i32*, i32** %9, align 8
  %161 = load %struct.inode*, %struct.inode** %10, align 8
  %162 = call i32 @ext4_xattr_ibody_set(i32* %160, %struct.inode* %161, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_ibody_find* %17)
  store i32 %162, i32* %20, align 4
  br label %173

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = load i32*, i32** %9, align 8
  %170 = load %struct.inode*, %struct.inode** %10, align 8
  %171 = call i32 @ext4_xattr_block_set(i32* %169, %struct.inode* %170, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %171, i32* %20, align 4
  br label %172

172:                                              ; preds = %168, %163
  br label %173

173:                                              ; preds = %172, %159
  br label %233

174:                                              ; preds = %151
  %175 = load i32*, i32** %9, align 8
  %176 = load %struct.inode*, %struct.inode** %10, align 8
  %177 = call i32 @ext4_xattr_ibody_set(i32* %175, %struct.inode* %176, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_ibody_find* %17)
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %20, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 2
  store i8* null, i8** %186, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = load %struct.inode*, %struct.inode** %10, align 8
  %189 = call i32 @ext4_xattr_block_set(i32* %187, %struct.inode* %188, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %189, i32* %20, align 4
  br label %232

190:                                              ; preds = %180, %174
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* @ENOSPC, align 4
  %193 = sub nsw i32 0, %192
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %231

195:                                              ; preds = %190
  %196 = load %struct.inode*, %struct.inode** %10, align 8
  %197 = call %struct.TYPE_12__* @EXT4_I(%struct.inode* %196)
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %201
  %207 = load %struct.inode*, %struct.inode** %10, align 8
  %208 = call i32 @ext4_xattr_block_find(%struct.inode* %207, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %208, i32* %20, align 4
  %209 = load i32, i32* %20, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %267

212:                                              ; preds = %206
  br label %213

213:                                              ; preds = %212, %201, %195
  %214 = load i32*, i32** %9, align 8
  %215 = load %struct.inode*, %struct.inode** %10, align 8
  %216 = call i32 @ext4_xattr_block_set(i32* %214, %struct.inode* %215, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %216, i32* %20, align 4
  %217 = load i32, i32* %20, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %267

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 2
  store i8* null, i8** %226, align 8
  %227 = load i32*, i32** %9, align 8
  %228 = load %struct.inode*, %struct.inode** %10, align 8
  %229 = call i32 @ext4_xattr_ibody_set(i32* %227, %struct.inode* %228, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_ibody_find* %17)
  store i32 %229, i32* %20, align 4
  br label %230

230:                                              ; preds = %225, %220
  br label %231

231:                                              ; preds = %230, %190
  br label %232

232:                                              ; preds = %231, %185
  br label %233

233:                                              ; preds = %232, %173
  %234 = load i32, i32* %20, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %266, label %236

236:                                              ; preds = %233
  %237 = load i32*, i32** %9, align 8
  %238 = load %struct.inode*, %struct.inode** %10, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ext4_xattr_update_super_block(i32* %237, i32 %240)
  %242 = load %struct.inode*, %struct.inode** %10, align 8
  %243 = call i32 @ext4_current_time(%struct.inode* %242)
  %244 = load %struct.inode*, %struct.inode** %10, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load i8*, i8** %13, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %236
  %249 = load %struct.inode*, %struct.inode** %10, align 8
  %250 = load i32, i32* @EXT4_STATE_NO_EXPAND, align 4
  %251 = call i32 @ext4_clear_inode_state(%struct.inode* %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %236
  %253 = load i32*, i32** %9, align 8
  %254 = load %struct.inode*, %struct.inode** %10, align 8
  %255 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %256 = call i32 @ext4_mark_iloc_dirty(i32* %253, %struct.inode* %254, %struct.TYPE_10__* %255)
  store i32 %256, i32* %20, align 4
  %257 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  store i32* null, i32** %258, align 8
  %259 = load %struct.inode*, %struct.inode** %10, align 8
  %260 = call i64 @IS_SYNC(%struct.inode* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %252
  %263 = load i32*, i32** %9, align 8
  %264 = call i32 @ext4_handle_sync(i32* %263)
  br label %265

265:                                              ; preds = %262, %252
  br label %266

266:                                              ; preds = %265, %233
  br label %267

267:                                              ; preds = %266, %219, %211, %149, %140, %136, %118, %106, %81, %72
  %268 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @brelse(i32* %270)
  %272 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @brelse(i32* %273)
  %275 = load i64, i64* %19, align 8
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %267
  %278 = load %struct.inode*, %struct.inode** %10, align 8
  %279 = load i32, i32* @EXT4_STATE_NO_EXPAND, align 4
  %280 = call i32 @ext4_clear_inode_state(%struct.inode* %278, i32 %279)
  br label %281

281:                                              ; preds = %277, %267
  %282 = load %struct.inode*, %struct.inode** %10, align 8
  %283 = call %struct.TYPE_12__* @EXT4_I(%struct.inode* %282)
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = call i32 @up_write(i32* %284)
  %286 = load i32, i32* %20, align 4
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %281, %53, %46
  %288 = load i32, i32* %8, align 4
  ret i32 %288
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local %struct.TYPE_12__* @EXT4_I(%struct.inode*) #2

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #2

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #2

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.TYPE_10__*) #2

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32*) #2

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.TYPE_10__*) #2

declare dso_local i32 @memset(%struct.ext4_inode*, i32, i32) #2

declare dso_local %struct.TYPE_11__* @EXT4_SB(i32) #2

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #2

declare dso_local i32 @ext4_xattr_ibody_find(%struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*) #2

declare dso_local i32 @ext4_xattr_block_find(%struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_block_find*) #2

declare dso_local i32 @ext4_xattr_ibody_set(i32*, %struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*) #2

declare dso_local i32 @ext4_xattr_block_set(i32*, %struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_block_find*) #2

declare dso_local i32 @ext4_xattr_update_super_block(i32*, i32) #2

declare dso_local i32 @ext4_current_time(%struct.inode*) #2

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.TYPE_10__*) #2

declare dso_local i64 @IS_SYNC(%struct.inode*) #2

declare dso_local i32 @ext4_handle_sync(i32*) #2

declare dso_local i32 @brelse(i32*) #2

declare dso_local i32 @up_write(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
