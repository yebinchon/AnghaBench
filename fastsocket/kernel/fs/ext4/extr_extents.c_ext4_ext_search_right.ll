; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_search_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_search_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.ext4_extent_header*, %struct.ext4_extent_idx*, %struct.ext4_extent* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent_idx = type { i32 }
%struct.ext4_extent = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"path == NULL *logical %d!\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"first_extent(path[%d].p_hdr) != ex\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ix != EXT_FIRST_INDEX *logical %d!\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"logical %d < ee_block %d + ee_len %d!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_search_right(%struct.inode* %0, %struct.ext4_ext_path* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ext4_extent_header*, align 8
  %12 = alloca %struct.ext4_extent_idx*, align 8
  %13 = alloca %struct.ext4_extent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %17 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %18 = icmp eq %struct.ext4_ext_path* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.inode*, i8*, i64, ...) @EXT4_ERROR_INODE(%struct.inode* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %280

29:                                               ; preds = %4
  %30 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %31 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %15, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %38 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %37, i32 0, i32 3
  %39 = load %struct.ext4_extent*, %struct.ext4_extent** %38, align 8
  %40 = icmp eq %struct.ext4_extent* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %280

42:                                               ; preds = %36, %29
  %43 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %43, i64 %45
  %47 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %46, i32 0, i32 3
  %48 = load %struct.ext4_extent*, %struct.ext4_extent** %47, align 8
  store %struct.ext4_extent* %48, %struct.ext4_extent** %13, align 8
  %49 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %50 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %54 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %119

58:                                               ; preds = %42
  %59 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %59, i64 %61
  %63 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %62, i32 0, i32 1
  %64 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %63, align 8
  %65 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %64)
  %66 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %67 = icmp ne %struct.ext4_extent* %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 (%struct.inode*, i8*, i64, ...) @EXT4_ERROR_INODE(%struct.inode* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %280

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %109, %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %15, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %84, i64 %86
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %87, i32 0, i32 2
  %89 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %88, align 8
  store %struct.ext4_extent_idx* %89, %struct.ext4_extent_idx** %12, align 8
  %90 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %91 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %91, i64 %93
  %95 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %94, i32 0, i32 1
  %96 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %95, align 8
  %97 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %96)
  %98 = icmp ne %struct.ext4_extent_idx* %90, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %83
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (%struct.inode*, i8*, i64, ...) @EXT4_ERROR_INODE(%struct.inode* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %105)
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %280

109:                                              ; preds = %83
  br label %79

110:                                              ; preds = %79
  %111 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %112 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @le32_to_cpu(i32 %113)
  %115 = load i64*, i64** %8, align 8
  store i64 %114, i64* %115, align 8
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %117 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %116)
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  store i32 0, i32* %5, align 4
  br label %280

119:                                              ; preds = %42
  %120 = load i64*, i64** %8, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %123 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @le32_to_cpu(i32 %124)
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  %129 = icmp slt i64 %121, %128
  %130 = zext i1 %129 to i32
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %119
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = load i64*, i64** %8, align 8
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %138 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @le32_to_cpu(i32 %139)
  %141 = load i32, i32* %16, align 4
  %142 = call i32 (%struct.inode*, i8*, i64, ...) @EXT4_ERROR_INODE(%struct.inode* %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %136, i64 %140, i32 %141)
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %280

145:                                              ; preds = %119
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %147 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %147, i64 %149
  %151 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %150, i32 0, i32 1
  %152 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %151, align 8
  %153 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %152)
  %154 = icmp ne %struct.ext4_extent* %146, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %145
  %156 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %157 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %156, i32 1
  store %struct.ext4_extent* %157, %struct.ext4_extent** %13, align 8
  %158 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %159 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @le32_to_cpu(i32 %160)
  %162 = load i64*, i64** %8, align 8
  store i64 %161, i64* %162, align 8
  %163 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %164 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %163)
  %165 = load i32*, i32** %9, align 8
  store i32 %164, i32* %165, align 4
  store i32 0, i32* %5, align 4
  br label %280

166:                                              ; preds = %145
  br label %167

167:                                              ; preds = %188, %166
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %15, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %167
  %172 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %172, i64 %174
  %176 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %175, i32 0, i32 2
  %177 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %176, align 8
  store %struct.ext4_extent_idx* %177, %struct.ext4_extent_idx** %12, align 8
  %178 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %179 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %179, i64 %181
  %183 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %182, i32 0, i32 1
  %184 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %183, align 8
  %185 = call %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.ext4_extent_header* %184)
  %186 = icmp ne %struct.ext4_extent_idx* %178, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %171
  br label %190

188:                                              ; preds = %171
  br label %167

189:                                              ; preds = %167
  store i32 0, i32* %5, align 4
  br label %280

190:                                              ; preds = %187
  %191 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %192 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %191, i32 1
  store %struct.ext4_extent_idx* %192, %struct.ext4_extent_idx** %12, align 8
  %193 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %194 = call i32 @ext4_idx_pblock(%struct.ext4_extent_idx* %193)
  store i32 %194, i32* %14, align 4
  br label %195

195:                                              ; preds = %231, %190
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  %198 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %199 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %238

202:                                              ; preds = %195
  %203 = load %struct.inode*, %struct.inode** %6, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %14, align 4
  %207 = call %struct.buffer_head* @sb_bread(i32 %205, i32 %206)
  store %struct.buffer_head* %207, %struct.buffer_head** %10, align 8
  %208 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %209 = icmp eq %struct.buffer_head* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %202
  %211 = load i32, i32* @EIO, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %5, align 4
  br label %280

213:                                              ; preds = %202
  %214 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %215 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %214)
  store %struct.ext4_extent_header* %215, %struct.ext4_extent_header** %11, align 8
  %216 = load %struct.inode*, %struct.inode** %6, align 8
  %217 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %218 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %219 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %224 = call i64 @ext4_ext_check_block(%struct.inode* %216, %struct.ext4_extent_header* %217, i32 %222, %struct.buffer_head* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %213
  %227 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %228 = call i32 @put_bh(%struct.buffer_head* %227)
  %229 = load i32, i32* @EIO, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %5, align 4
  br label %280

231:                                              ; preds = %213
  %232 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %233 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %232)
  store %struct.ext4_extent_idx* %233, %struct.ext4_extent_idx** %12, align 8
  %234 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %12, align 8
  %235 = call i32 @ext4_idx_pblock(%struct.ext4_extent_idx* %234)
  store i32 %235, i32* %14, align 4
  %236 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %237 = call i32 @put_bh(%struct.buffer_head* %236)
  br label %195

238:                                              ; preds = %195
  %239 = load %struct.inode*, %struct.inode** %6, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %14, align 4
  %243 = call %struct.buffer_head* @sb_bread(i32 %241, i32 %242)
  store %struct.buffer_head* %243, %struct.buffer_head** %10, align 8
  %244 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %245 = icmp eq %struct.buffer_head* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %238
  %247 = load i32, i32* @EIO, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %5, align 4
  br label %280

249:                                              ; preds = %238
  %250 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %251 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %250)
  store %struct.ext4_extent_header* %251, %struct.ext4_extent_header** %11, align 8
  %252 = load %struct.inode*, %struct.inode** %6, align 8
  %253 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %254 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %255 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %15, align 4
  %258 = sub nsw i32 %256, %257
  %259 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %260 = call i64 @ext4_ext_check_block(%struct.inode* %252, %struct.ext4_extent_header* %253, i32 %258, %struct.buffer_head* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %249
  %263 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %264 = call i32 @put_bh(%struct.buffer_head* %263)
  %265 = load i32, i32* @EIO, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %5, align 4
  br label %280

267:                                              ; preds = %249
  %268 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %269 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %268)
  store %struct.ext4_extent* %269, %struct.ext4_extent** %13, align 8
  %270 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %271 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @le32_to_cpu(i32 %272)
  %274 = load i64*, i64** %8, align 8
  store i64 %273, i64* %274, align 8
  %275 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %276 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %275)
  %277 = load i32*, i32** %9, align 8
  store i32 %276, i32* %277, align 4
  %278 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %279 = call i32 @put_bh(%struct.buffer_head* %278)
  store i32 0, i32* %5, align 4
  br label %280

280:                                              ; preds = %267, %262, %246, %226, %210, %189, %155, %133, %110, %102, %71, %41, %22
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64, ...) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_idx_pblock(%struct.ext4_extent_idx*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i64 @ext4_ext_check_block(%struct.inode*, %struct.ext4_extent_header*, i32, %struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
