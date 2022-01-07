; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_ea.c_hpfs_set_ea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_ea.c_hpfs_set_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fnode = type { i8*, i32, i32, i32, i32, i32 }
%struct.extended_attribute = type { i32, i32, i32, i32, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"fnode %08lx: ea_offs == %03x, ea_size_s == %03x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_set_ea(%struct.inode* %0, %struct.fnode* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [4 x i8], align 1
  %18 = alloca %struct.extended_attribute*, align 8
  %19 = alloca %struct.extended_attribute*, align 8
  %20 = alloca [268 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.buffer_head*, align 8
  %27 = alloca %struct.buffer_head*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fnode* %1, %struct.fnode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %12, align 8
  %36 = load %struct.fnode*, %struct.fnode** %7, align 8
  %37 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %36)
  store %struct.extended_attribute* %37, %struct.extended_attribute** %19, align 8
  %38 = load %struct.fnode*, %struct.fnode** %7, align 8
  %39 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %38)
  store %struct.extended_attribute* %39, %struct.extended_attribute** %18, align 8
  br label %40

40:                                               ; preds = %89, %5
  %41 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %42 = load %struct.extended_attribute*, %struct.extended_attribute** %19, align 8
  %43 = icmp ult %struct.extended_attribute* %41, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %40
  %45 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %46 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strcmp(i32 %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %88, label %51

51:                                               ; preds = %44
  %52 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %53 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %58 = call i32 @ea_len(%struct.extended_attribute* %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.super_block*, %struct.super_block** %12, align 8
  %63 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %64 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %67 = call i32 @ea_sec(%struct.extended_attribute* %66)
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @set_indirect_ea(%struct.super_block* %62, i32 %65, i32 %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %56
  br label %87

72:                                               ; preds = %51
  %73 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %74 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %80 = call i32 @ea_data(%struct.extended_attribute* %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @memcpy(i8* %82, i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %72
  br label %87

87:                                               ; preds = %86, %71
  br label %654

88:                                               ; preds = %44
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %91 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %90)
  store %struct.extended_attribute* %91, %struct.extended_attribute** %18, align 8
  br label %40

92:                                               ; preds = %40
  %93 = load %struct.fnode*, %struct.fnode** %7, align 8
  %94 = getelementptr inbounds %struct.fnode, %struct.fnode* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %16, align 8
  %96 = load %struct.fnode*, %struct.fnode** %7, align 8
  %97 = getelementptr inbounds %struct.fnode, %struct.fnode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %15, align 4
  %99 = load %struct.fnode*, %struct.fnode** %7, align 8
  %100 = getelementptr inbounds %struct.fnode, %struct.fnode* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %203, %92
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %214

106:                                              ; preds = %102
  %107 = getelementptr inbounds [268 x i8], [268 x i8]* %20, i64 0, i64 0
  %108 = bitcast i8* %107 to %struct.extended_attribute*
  store %struct.extended_attribute* %108, %struct.extended_attribute** %18, align 8
  %109 = load i32, i32* %13, align 4
  %110 = add i32 %109, 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load %struct.super_block*, %struct.super_block** %12, align 8
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %119 = load i8*, i8** %16, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %118, i8* %119, i32 %120)
  br label %654

122:                                              ; preds = %106
  %123 = load %struct.super_block*, %struct.super_block** %12, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = getelementptr inbounds [268 x i8], [268 x i8]* %20, i64 0, i64 0
  %128 = call i64 @hpfs_ea_read(%struct.super_block* %123, i8* %124, i32 %125, i32 %126, i32 4, i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %654

131:                                              ; preds = %122
  %132 = load %struct.super_block*, %struct.super_block** %12, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = add i32 %135, 4
  %137 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %138 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  %141 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %142 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 8, i32 0
  %147 = add nsw i32 %140, %146
  %148 = getelementptr inbounds [268 x i8], [268 x i8]* %20, i64 0, i64 0
  %149 = getelementptr inbounds i8, i8* %148, i64 4
  %150 = call i64 @hpfs_ea_read(%struct.super_block* %132, i8* %133, i32 %134, i32 %136, i32 %147, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %131
  br label %654

153:                                              ; preds = %131
  %154 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %155 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @strcmp(i32 %156, i8* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %203, label %160

160:                                              ; preds = %153
  %161 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %162 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %160
  %166 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %167 = call i32 @ea_len(%struct.extended_attribute* %166)
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = load %struct.super_block*, %struct.super_block** %12, align 8
  %172 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %173 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %176 = call i32 @ea_sec(%struct.extended_attribute* %175)
  %177 = load i8*, i8** %9, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @set_indirect_ea(%struct.super_block* %171, i32 %174, i32 %176, i8* %177, i32 %178)
  br label %180

180:                                              ; preds = %170, %165
  br label %202

181:                                              ; preds = %160
  %182 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %183 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %181
  %188 = load %struct.super_block*, %struct.super_block** %12, align 8
  %189 = load i8*, i8** %16, align 8
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %13, align 4
  %192 = add i32 %191, 4
  %193 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %194 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add i32 %192, %195
  %197 = add i32 %196, 1
  %198 = load i32, i32* %10, align 4
  %199 = load i8*, i8** %9, align 8
  %200 = call i64 (%struct.super_block*, i8*, i32, i32, i32, ...) @hpfs_ea_write(%struct.super_block* %188, i8* %189, i32 %190, i32 %197, i32 %198, i8* %199)
  br label %201

201:                                              ; preds = %187, %181
  br label %202

202:                                              ; preds = %201, %180
  br label %654

203:                                              ; preds = %153
  %204 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %205 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %208 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %206, %209
  %211 = add nsw i32 %210, 5
  %212 = load i32, i32* %13, align 4
  %213 = add i32 %212, %211
  store i32 %213, i32* %13, align 4
  br label %102

214:                                              ; preds = %102
  %215 = load %struct.fnode*, %struct.fnode** %7, align 8
  %216 = getelementptr inbounds %struct.fnode, %struct.fnode* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %214
  %220 = load %struct.fnode*, %struct.fnode** %7, align 8
  %221 = getelementptr inbounds %struct.fnode, %struct.fnode* %220, i32 0, i32 3
  store i32 196, i32* %221, align 8
  br label %222

222:                                              ; preds = %219, %214
  %223 = load %struct.fnode*, %struct.fnode** %7, align 8
  %224 = getelementptr inbounds %struct.fnode, %struct.fnode* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %225, 196
  br i1 %226, label %240, label %227

227:                                              ; preds = %222
  %228 = load %struct.fnode*, %struct.fnode** %7, align 8
  %229 = getelementptr inbounds %struct.fnode, %struct.fnode* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.fnode*, %struct.fnode** %7, align 8
  %232 = getelementptr inbounds %struct.fnode, %struct.fnode* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %230, %233
  %235 = load %struct.fnode*, %struct.fnode** %7, align 8
  %236 = getelementptr inbounds %struct.fnode, %struct.fnode* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %234, %237
  %239 = icmp sgt i32 %238, 512
  br i1 %239, label %240, label %252

240:                                              ; preds = %227, %222
  %241 = load %struct.super_block*, %struct.super_block** %12, align 8
  %242 = load %struct.inode*, %struct.inode** %6, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.fnode*, %struct.fnode** %7, align 8
  %246 = getelementptr inbounds %struct.fnode, %struct.fnode* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.fnode*, %struct.fnode** %7, align 8
  %249 = getelementptr inbounds %struct.fnode, %struct.fnode* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %241, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %244, i32 %247, i32 %250)
  br label %654

252:                                              ; preds = %227
  %253 = load %struct.fnode*, %struct.fnode** %7, align 8
  %254 = getelementptr inbounds %struct.fnode, %struct.fnode* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %252
  %258 = load %struct.fnode*, %struct.fnode** %7, align 8
  %259 = getelementptr inbounds %struct.fnode, %struct.fnode* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %314, label %262

262:                                              ; preds = %257, %252
  %263 = load %struct.fnode*, %struct.fnode** %7, align 8
  %264 = getelementptr inbounds %struct.fnode, %struct.fnode* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.fnode*, %struct.fnode** %7, align 8
  %267 = getelementptr inbounds %struct.fnode, %struct.fnode* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %265, %268
  %270 = load %struct.fnode*, %struct.fnode** %7, align 8
  %271 = getelementptr inbounds %struct.fnode, %struct.fnode* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %269, %272
  %274 = load i8*, i8** %8, align 8
  %275 = call i32 @strlen(i8* %274)
  %276 = add nsw i32 %273, %275
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %276, %277
  %279 = add nsw i32 %278, 5
  %280 = icmp sle i32 %279, 512
  br i1 %280, label %281, label %314

281:                                              ; preds = %262
  %282 = load %struct.fnode*, %struct.fnode** %7, align 8
  %283 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %282)
  store %struct.extended_attribute* %283, %struct.extended_attribute** %18, align 8
  %284 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %285 = bitcast %struct.extended_attribute* %284 to i8*
  store i8 0, i8* %285, align 1
  %286 = load i8*, i8** %8, align 8
  %287 = call i32 @strlen(i8* %286)
  %288 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %289 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %10, align 4
  %291 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %292 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  %293 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %294 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load i8*, i8** %8, align 8
  %297 = call i32 @strcpy(i32 %295, i8* %296)
  %298 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %299 = call i32 @ea_data(%struct.extended_attribute* %298)
  %300 = sext i32 %299 to i64
  %301 = inttoptr i64 %300 to i8*
  %302 = load i8*, i8** %9, align 8
  %303 = load i32, i32* %10, align 4
  %304 = call i32 @memcpy(i8* %301, i8* %302, i32 %303)
  %305 = load i8*, i8** %8, align 8
  %306 = call i32 @strlen(i8* %305)
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %306, %307
  %309 = add nsw i32 %308, 5
  %310 = load %struct.fnode*, %struct.fnode** %7, align 8
  %311 = getelementptr inbounds %struct.fnode, %struct.fnode* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, %309
  store i32 %313, i32* %311, align 4
  br label %596

314:                                              ; preds = %262, %257
  %315 = load %struct.fnode*, %struct.fnode** %7, align 8
  %316 = getelementptr inbounds %struct.fnode, %struct.fnode* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %364

319:                                              ; preds = %314
  %320 = load %struct.fnode*, %struct.fnode** %7, align 8
  %321 = getelementptr inbounds %struct.fnode, %struct.fnode* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %364, label %324

324:                                              ; preds = %319
  %325 = load %struct.super_block*, %struct.super_block** %12, align 8
  %326 = load i64, i64* %11, align 8
  %327 = call i8* @hpfs_alloc_sector(%struct.super_block* %325, i64 %326, i32 1, i32 0, i32 1)
  store i8* %327, i8** %21, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %330, label %329

329:                                              ; preds = %324
  br label %654

330:                                              ; preds = %324
  %331 = load %struct.super_block*, %struct.super_block** %12, align 8
  %332 = load i8*, i8** %21, align 8
  %333 = call i8* @hpfs_get_sector(%struct.super_block* %331, i8* %332, %struct.buffer_head** %22)
  store i8* %333, i8** %23, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %339, label %335

335:                                              ; preds = %330
  %336 = load %struct.super_block*, %struct.super_block** %12, align 8
  %337 = load i8*, i8** %21, align 8
  %338 = call i32 @hpfs_free_sectors(%struct.super_block* %336, i8* %337, i32 1)
  br label %654

339:                                              ; preds = %330
  %340 = load i8*, i8** %23, align 8
  %341 = load %struct.fnode*, %struct.fnode** %7, align 8
  %342 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %341)
  %343 = bitcast %struct.extended_attribute* %342 to i8*
  %344 = load %struct.fnode*, %struct.fnode** %7, align 8
  %345 = getelementptr inbounds %struct.fnode, %struct.fnode* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @memcpy(i8* %340, i8* %343, i32 %346)
  %348 = load %struct.fnode*, %struct.fnode** %7, align 8
  %349 = getelementptr inbounds %struct.fnode, %struct.fnode* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.fnode*, %struct.fnode** %7, align 8
  %352 = getelementptr inbounds %struct.fnode, %struct.fnode* %351, i32 0, i32 1
  store i32 %350, i32* %352, align 8
  %353 = load %struct.fnode*, %struct.fnode** %7, align 8
  %354 = getelementptr inbounds %struct.fnode, %struct.fnode* %353, i32 0, i32 4
  store i32 0, i32* %354, align 4
  %355 = load i8*, i8** %21, align 8
  %356 = load %struct.fnode*, %struct.fnode** %7, align 8
  %357 = getelementptr inbounds %struct.fnode, %struct.fnode* %356, i32 0, i32 0
  store i8* %355, i8** %357, align 8
  %358 = load %struct.fnode*, %struct.fnode** %7, align 8
  %359 = getelementptr inbounds %struct.fnode, %struct.fnode* %358, i32 0, i32 2
  store i32 0, i32* %359, align 4
  %360 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %361 = call i32 @mark_buffer_dirty(%struct.buffer_head* %360)
  %362 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %363 = call i32 @brelse(%struct.buffer_head* %362)
  br label %364

364:                                              ; preds = %339, %319, %314
  %365 = load %struct.fnode*, %struct.fnode** %7, align 8
  %366 = getelementptr inbounds %struct.fnode, %struct.fnode* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = add nsw i32 %367, 5
  %369 = load i8*, i8** %8, align 8
  %370 = call i32 @strlen(i8* %369)
  %371 = add nsw i32 %368, %370
  %372 = load i32, i32* %10, align 4
  %373 = add nsw i32 %371, %372
  store i32 %373, i32* %13, align 4
  %374 = load %struct.fnode*, %struct.fnode** %7, align 8
  %375 = getelementptr inbounds %struct.fnode, %struct.fnode* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = add nsw i32 %376, 511
  %378 = ashr i32 %377, 9
  store i32 %378, i32* %15, align 4
  %379 = load i32, i32* %13, align 4
  %380 = icmp uge i32 %379, 30000
  br i1 %380, label %381, label %382

381:                                              ; preds = %364
  br label %607

382:                                              ; preds = %364
  br label %383

383:                                              ; preds = %522, %382
  %384 = load i32, i32* %13, align 4
  %385 = add i32 %384, 511
  %386 = lshr i32 %385, 9
  %387 = load i32, i32* %15, align 4
  %388 = icmp ugt i32 %386, %387
  br i1 %388, label %389, label %523

389:                                              ; preds = %383
  %390 = load i32, i32* %15, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %405, label %392

392:                                              ; preds = %389
  %393 = load %struct.super_block*, %struct.super_block** %12, align 8
  %394 = load i64, i64* %11, align 8
  %395 = call i8* @hpfs_alloc_sector(%struct.super_block* %393, i64 %394, i32 1, i32 0, i32 1)
  %396 = load %struct.fnode*, %struct.fnode** %7, align 8
  %397 = getelementptr inbounds %struct.fnode, %struct.fnode* %396, i32 0, i32 0
  store i8* %395, i8** %397, align 8
  %398 = icmp ne i8* %395, null
  br i1 %398, label %400, label %399

399:                                              ; preds = %392
  br label %607

400:                                              ; preds = %392
  %401 = load %struct.fnode*, %struct.fnode** %7, align 8
  %402 = getelementptr inbounds %struct.fnode, %struct.fnode* %401, i32 0, i32 2
  store i32 0, i32* %402, align 4
  %403 = load i32, i32* %15, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %15, align 4
  br label %504

405:                                              ; preds = %389
  %406 = load %struct.fnode*, %struct.fnode** %7, align 8
  %407 = getelementptr inbounds %struct.fnode, %struct.fnode* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %503, label %410

410:                                              ; preds = %405
  %411 = load %struct.super_block*, %struct.super_block** %12, align 8
  %412 = load %struct.fnode*, %struct.fnode** %7, align 8
  %413 = getelementptr inbounds %struct.fnode, %struct.fnode* %412, i32 0, i32 0
  %414 = load i8*, i8** %413, align 8
  %415 = load i32, i32* %15, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr i8, i8* %414, i64 %416
  %418 = call i64 @hpfs_alloc_if_possible(%struct.super_block* %411, i8* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %410
  %421 = load i32, i32* %15, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %15, align 4
  br label %502

423:                                              ; preds = %410
  %424 = load %struct.super_block*, %struct.super_block** %12, align 8
  %425 = load i64, i64* %11, align 8
  %426 = load i32, i32* %13, align 4
  %427 = add i32 %426, 511
  %428 = lshr i32 %427, 9
  %429 = sub i32 1, %428
  %430 = call i8* @hpfs_alloc_sector(%struct.super_block* %424, i64 %425, i32 1, i32 %429, i32 1)
  store i8* %430, i8** %24, align 8
  %431 = icmp ne i8* %430, null
  br i1 %431, label %433, label %432

432:                                              ; preds = %423
  br label %607

433:                                              ; preds = %423
  store i32 0, i32* %25, align 4
  br label %434

434:                                              ; preds = %486, %433
  %435 = load i32, i32* %25, align 4
  %436 = load i32, i32* %15, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %489

438:                                              ; preds = %434
  %439 = load %struct.super_block*, %struct.super_block** %12, align 8
  %440 = load %struct.fnode*, %struct.fnode** %7, align 8
  %441 = getelementptr inbounds %struct.fnode, %struct.fnode* %440, i32 0, i32 0
  %442 = load i8*, i8** %441, align 8
  %443 = load i32, i32* %25, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr i8, i8* %442, i64 %444
  %446 = load i32, i32* %15, align 4
  %447 = load i32, i32* %25, align 4
  %448 = sub nsw i32 %446, %447
  %449 = sub nsw i32 %448, 1
  %450 = call i8* @hpfs_map_sector(%struct.super_block* %439, i8* %445, %struct.buffer_head** %26, i32 %449)
  store i8* %450, i8** %28, align 8
  %451 = icmp ne i8* %450, null
  br i1 %451, label %459, label %452

452:                                              ; preds = %438
  %453 = load %struct.super_block*, %struct.super_block** %12, align 8
  %454 = load i8*, i8** %24, align 8
  %455 = load i32, i32* %13, align 4
  %456 = add i32 %455, 511
  %457 = lshr i32 %456, 9
  %458 = call i32 @hpfs_free_sectors(%struct.super_block* %453, i8* %454, i32 %457)
  br label %607

459:                                              ; preds = %438
  %460 = load %struct.super_block*, %struct.super_block** %12, align 8
  %461 = load i8*, i8** %24, align 8
  %462 = load i32, i32* %25, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr i8, i8* %461, i64 %463
  %465 = call i8* @hpfs_get_sector(%struct.super_block* %460, i8* %464, %struct.buffer_head** %27)
  store i8* %465, i8** %29, align 8
  %466 = icmp ne i8* %465, null
  br i1 %466, label %476, label %467

467:                                              ; preds = %459
  %468 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %469 = call i32 @brelse(%struct.buffer_head* %468)
  %470 = load %struct.super_block*, %struct.super_block** %12, align 8
  %471 = load i8*, i8** %24, align 8
  %472 = load i32, i32* %13, align 4
  %473 = add i32 %472, 511
  %474 = lshr i32 %473, 9
  %475 = call i32 @hpfs_free_sectors(%struct.super_block* %470, i8* %471, i32 %474)
  br label %607

476:                                              ; preds = %459
  %477 = load i8*, i8** %29, align 8
  %478 = load i8*, i8** %28, align 8
  %479 = call i32 @memcpy(i8* %477, i8* %478, i32 512)
  %480 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %481 = call i32 @brelse(%struct.buffer_head* %480)
  %482 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %483 = call i32 @mark_buffer_dirty(%struct.buffer_head* %482)
  %484 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %485 = call i32 @brelse(%struct.buffer_head* %484)
  br label %486

486:                                              ; preds = %476
  %487 = load i32, i32* %25, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %25, align 4
  br label %434

489:                                              ; preds = %434
  %490 = load %struct.super_block*, %struct.super_block** %12, align 8
  %491 = load %struct.fnode*, %struct.fnode** %7, align 8
  %492 = getelementptr inbounds %struct.fnode, %struct.fnode* %491, i32 0, i32 0
  %493 = load i8*, i8** %492, align 8
  %494 = load i32, i32* %15, align 4
  %495 = call i32 @hpfs_free_sectors(%struct.super_block* %490, i8* %493, i32 %494)
  %496 = load i8*, i8** %24, align 8
  %497 = load %struct.fnode*, %struct.fnode** %7, align 8
  %498 = getelementptr inbounds %struct.fnode, %struct.fnode* %497, i32 0, i32 0
  store i8* %496, i8** %498, align 8
  %499 = load i32, i32* %13, align 4
  %500 = add i32 %499, 511
  %501 = lshr i32 %500, 9
  store i32 %501, i32* %15, align 4
  br label %502

502:                                              ; preds = %489, %420
  br label %503

503:                                              ; preds = %502, %405
  br label %504

504:                                              ; preds = %503, %400
  %505 = load %struct.fnode*, %struct.fnode** %7, align 8
  %506 = getelementptr inbounds %struct.fnode, %struct.fnode* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %522

509:                                              ; preds = %504
  %510 = load %struct.super_block*, %struct.super_block** %12, align 8
  %511 = load %struct.fnode*, %struct.fnode** %7, align 8
  %512 = getelementptr inbounds %struct.fnode, %struct.fnode* %511, i32 0, i32 0
  %513 = load i8*, i8** %512, align 8
  %514 = load i32, i32* %15, align 4
  %515 = call i32 @hpfs_add_sector_to_btree(%struct.super_block* %510, i8* %513, i32 0, i32 %514)
  %516 = icmp ne i32 %515, -1
  br i1 %516, label %517, label %520

517:                                              ; preds = %509
  %518 = load i32, i32* %15, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %15, align 4
  br label %521

520:                                              ; preds = %509
  br label %607

521:                                              ; preds = %517
  br label %522

522:                                              ; preds = %521, %504
  br label %383

523:                                              ; preds = %383
  %524 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %524, align 1
  %525 = load i8*, i8** %8, align 8
  %526 = call i32 @strlen(i8* %525)
  %527 = trunc i32 %526 to i8
  %528 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  store i8 %527, i8* %528, align 1
  %529 = load i32, i32* %10, align 4
  %530 = and i32 %529, 255
  %531 = trunc i32 %530 to i8
  %532 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 2
  store i8 %531, i8* %532, align 1
  %533 = load i32, i32* %10, align 4
  %534 = ashr i32 %533, 8
  %535 = trunc i32 %534 to i8
  %536 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 3
  store i8 %535, i8* %536, align 1
  %537 = load %struct.super_block*, %struct.super_block** %12, align 8
  %538 = load %struct.fnode*, %struct.fnode** %7, align 8
  %539 = getelementptr inbounds %struct.fnode, %struct.fnode* %538, i32 0, i32 0
  %540 = load i8*, i8** %539, align 8
  %541 = load %struct.fnode*, %struct.fnode** %7, align 8
  %542 = getelementptr inbounds %struct.fnode, %struct.fnode* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.fnode*, %struct.fnode** %7, align 8
  %545 = getelementptr inbounds %struct.fnode, %struct.fnode* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 8
  %547 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %548 = call i64 (%struct.super_block*, i8*, i32, i32, i32, ...) @hpfs_ea_write(%struct.super_block* %537, i8* %540, i32 %543, i32 %546, i32 4, i8* %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %551

550:                                              ; preds = %523
  br label %607

551:                                              ; preds = %523
  %552 = load %struct.super_block*, %struct.super_block** %12, align 8
  %553 = load %struct.fnode*, %struct.fnode** %7, align 8
  %554 = getelementptr inbounds %struct.fnode, %struct.fnode* %553, i32 0, i32 0
  %555 = load i8*, i8** %554, align 8
  %556 = load %struct.fnode*, %struct.fnode** %7, align 8
  %557 = getelementptr inbounds %struct.fnode, %struct.fnode* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.fnode*, %struct.fnode** %7, align 8
  %560 = getelementptr inbounds %struct.fnode, %struct.fnode* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 8
  %562 = add nsw i32 %561, 4
  %563 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  %564 = load i8, i8* %563, align 1
  %565 = zext i8 %564 to i32
  %566 = add nsw i32 %565, 1
  %567 = load i8*, i8** %8, align 8
  %568 = call i64 (%struct.super_block*, i8*, i32, i32, i32, ...) @hpfs_ea_write(%struct.super_block* %552, i8* %555, i32 %558, i32 %562, i32 %566, i8* %567)
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %571

570:                                              ; preds = %551
  br label %607

571:                                              ; preds = %551
  %572 = load %struct.super_block*, %struct.super_block** %12, align 8
  %573 = load %struct.fnode*, %struct.fnode** %7, align 8
  %574 = getelementptr inbounds %struct.fnode, %struct.fnode* %573, i32 0, i32 0
  %575 = load i8*, i8** %574, align 8
  %576 = load %struct.fnode*, %struct.fnode** %7, align 8
  %577 = getelementptr inbounds %struct.fnode, %struct.fnode* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 4
  %579 = load %struct.fnode*, %struct.fnode** %7, align 8
  %580 = getelementptr inbounds %struct.fnode, %struct.fnode* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 8
  %582 = add nsw i32 %581, 5
  %583 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  %584 = load i8, i8* %583, align 1
  %585 = zext i8 %584 to i32
  %586 = add nsw i32 %582, %585
  %587 = load i32, i32* %10, align 4
  %588 = load i8*, i8** %9, align 8
  %589 = call i64 (%struct.super_block*, i8*, i32, i32, i32, ...) @hpfs_ea_write(%struct.super_block* %572, i8* %575, i32 %578, i32 %586, i32 %587, i8* %588)
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %592

591:                                              ; preds = %571
  br label %607

592:                                              ; preds = %571
  %593 = load i32, i32* %13, align 4
  %594 = load %struct.fnode*, %struct.fnode** %7, align 8
  %595 = getelementptr inbounds %struct.fnode, %struct.fnode* %594, i32 0, i32 1
  store i32 %593, i32* %595, align 8
  br label %596

596:                                              ; preds = %592, %281
  %597 = load i8*, i8** %8, align 8
  %598 = call i32 @strlen(i8* %597)
  %599 = add nsw i32 5, %598
  %600 = load i32, i32* %10, align 4
  %601 = add nsw i32 %599, %600
  %602 = load %struct.inode*, %struct.inode** %6, align 8
  %603 = call %struct.TYPE_2__* @hpfs_i(%struct.inode* %602)
  %604 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = add nsw i32 %605, %601
  store i32 %606, i32* %604, align 4
  br label %654

607:                                              ; preds = %591, %570, %550, %520, %467, %452, %432, %399, %381
  %608 = load %struct.fnode*, %struct.fnode** %7, align 8
  %609 = getelementptr inbounds %struct.fnode, %struct.fnode* %608, i32 0, i32 0
  %610 = load i8*, i8** %609, align 8
  %611 = icmp ne i8* %610, null
  br i1 %611, label %612, label %649

612:                                              ; preds = %607
  %613 = load %struct.fnode*, %struct.fnode** %7, align 8
  %614 = getelementptr inbounds %struct.fnode, %struct.fnode* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %628

617:                                              ; preds = %612
  %618 = load %struct.super_block*, %struct.super_block** %12, align 8
  %619 = load %struct.fnode*, %struct.fnode** %7, align 8
  %620 = getelementptr inbounds %struct.fnode, %struct.fnode* %619, i32 0, i32 0
  %621 = load i8*, i8** %620, align 8
  %622 = load %struct.fnode*, %struct.fnode** %7, align 8
  %623 = getelementptr inbounds %struct.fnode, %struct.fnode* %622, i32 0, i32 1
  %624 = load i32, i32* %623, align 8
  %625 = add nsw i32 %624, 511
  %626 = ashr i32 %625, 9
  %627 = call i32 @hpfs_truncate_btree(%struct.super_block* %618, i8* %621, i32 1, i32 %626)
  br label %648

628:                                              ; preds = %612
  %629 = load %struct.super_block*, %struct.super_block** %12, align 8
  %630 = load %struct.fnode*, %struct.fnode** %7, align 8
  %631 = getelementptr inbounds %struct.fnode, %struct.fnode* %630, i32 0, i32 0
  %632 = load i8*, i8** %631, align 8
  %633 = load %struct.fnode*, %struct.fnode** %7, align 8
  %634 = getelementptr inbounds %struct.fnode, %struct.fnode* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 8
  %636 = add nsw i32 %635, 511
  %637 = ashr i32 %636, 9
  %638 = sext i32 %637 to i64
  %639 = getelementptr i8, i8* %632, i64 %638
  %640 = load i32, i32* %15, align 4
  %641 = load %struct.fnode*, %struct.fnode** %7, align 8
  %642 = getelementptr inbounds %struct.fnode, %struct.fnode* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 8
  %644 = add nsw i32 %643, 511
  %645 = ashr i32 %644, 9
  %646 = sub nsw i32 %640, %645
  %647 = call i32 @hpfs_free_sectors(%struct.super_block* %629, i8* %639, i32 %646)
  br label %648

648:                                              ; preds = %628, %617
  br label %654

649:                                              ; preds = %607
  %650 = load %struct.fnode*, %struct.fnode** %7, align 8
  %651 = getelementptr inbounds %struct.fnode, %struct.fnode* %650, i32 0, i32 1
  store i32 0, i32* %651, align 8
  %652 = load %struct.fnode*, %struct.fnode** %7, align 8
  %653 = getelementptr inbounds %struct.fnode, %struct.fnode* %652, i32 0, i32 0
  store i8* null, i8** %653, align 8
  br label %654

654:                                              ; preds = %87, %113, %130, %152, %202, %240, %329, %335, %596, %649, %648
  ret void
}

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ea_len(%struct.extended_attribute*) #1

declare dso_local i32 @set_indirect_ea(%struct.super_block*, i32, i32, i8*, i32) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ea_data(%struct.extended_attribute*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i64 @hpfs_ea_read(%struct.super_block*, i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @hpfs_ea_write(%struct.super_block*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @hpfs_alloc_sector(%struct.super_block*, i64, i32, i32, i32) #1

declare dso_local i8* @hpfs_get_sector(%struct.super_block*, i8*, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @hpfs_alloc_if_possible(%struct.super_block*, i8*) #1

declare dso_local i8* @hpfs_map_sector(%struct.super_block*, i8*, %struct.buffer_head**, i32) #1

declare dso_local i32 @hpfs_add_sector_to_btree(%struct.super_block*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @hpfs_truncate_btree(%struct.super_block*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
