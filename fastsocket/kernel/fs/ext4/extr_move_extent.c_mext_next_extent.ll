; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_next_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_next_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, i64, %struct.ext4_extent*, i8*, %struct.ext4_extent_header*, i8* }
%struct.ext4_extent = type { i32 }
%struct.ext4_extent_header = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent**)* @mext_next_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_next_extent(%struct.inode* %0, %struct.ext4_ext_path* %1, %struct.ext4_extent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_ext_path*, align 8
  %7 = alloca %struct.ext4_extent**, align 8
  %8 = alloca %struct.ext4_extent_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %6, align 8
  store %struct.ext4_extent** %2, %struct.ext4_extent*** %7, align 8
  %12 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %13 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %16, i64 %18
  %20 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %19, i32 0, i32 4
  %21 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %20, align 8
  %22 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %21)
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i64 %25
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 2
  %28 = load %struct.ext4_extent*, %struct.ext4_extent** %27, align 8
  %29 = icmp ugt %struct.ext4_extent* %22, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %3
  %31 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %31, i64 %33
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %34, i32 0, i32 2
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %35, align 8
  %37 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %36, i32 1
  store %struct.ext4_extent* %37, %struct.ext4_extent** %35, align 8
  %38 = load %struct.ext4_extent**, %struct.ext4_extent*** %7, align 8
  store %struct.ext4_extent* %37, %struct.ext4_extent** %38, align 8
  %39 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %39, i64 %41
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %42, i32 0, i32 2
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %43, align 8
  %45 = call i8* @ext4_ext_pblock(%struct.ext4_extent* %44)
  %46 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %46, i64 %48
  %50 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %49, i32 0, i32 3
  store i8* %45, i8** %50, align 8
  store i32 0, i32* %4, align 4
  br label %293

51:                                               ; preds = %3
  br label %52

52:                                               ; preds = %291, %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %292

56:                                               ; preds = %52
  %57 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i64 %59
  %61 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i32 0, i32 4
  %62 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %61, align 8
  %63 = call i64 @EXT_LAST_INDEX(%struct.ext4_extent_header* %62)
  %64 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %64, i64 %66
  %68 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %63, %69
  br i1 %70, label %71, label %291

71:                                               ; preds = %56
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %11, align 4
  %73 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %73, i64 %75
  %77 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %80, i64 %82
  %84 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @ext4_idx_pblock(i64 %85)
  %87 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %87, i64 %89
  %91 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %90, i32 0, i32 3
  store i8* %86, i8** %91, align 8
  %92 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %92, i64 %95
  %97 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %96, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %71
  %101 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %101, i64 %104
  %106 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %105, i32 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @brelse(i8* %107)
  br label %109

109:                                              ; preds = %100, %71
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %113, i64 %115
  %117 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @sb_bread(i32 %112, i8* %118)
  %120 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %120, i64 %123
  %125 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %124, i32 0, i32 5
  store i8* %119, i8** %125, align 8
  %126 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %126, i64 %129
  %131 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %130, i32 0, i32 5
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %109
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %293

137:                                              ; preds = %109
  %138 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %138, i64 %141
  %143 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %142, i32 0, i32 5
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @ext_block_hdr(i8* %144)
  %146 = bitcast i8* %145 to %struct.ext4_extent_header*
  %147 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %147, i64 %150
  %152 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %151, i32 0, i32 4
  store %struct.ext4_extent_header* %146, %struct.ext4_extent_header** %152, align 8
  br label %153

153:                                              ; preds = %228, %137
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %244

158:                                              ; preds = %153
  %159 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %159, i64 %161
  %163 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %162, i32 0, i32 4
  %164 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %163, align 8
  %165 = call i64 @EXT_FIRST_INDEX(%struct.ext4_extent_header* %164)
  %166 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %166, i64 %168
  %170 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %169, i32 0, i32 1
  store i64 %165, i64* %170, align 8
  %171 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %171, i64 %173
  %175 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @ext4_idx_pblock(i64 %176)
  %178 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %178, i64 %180
  %182 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %181, i32 0, i32 3
  store i8* %177, i8** %182, align 8
  %183 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %183, i64 %186
  %188 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %187, i32 0, i32 5
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %200

191:                                              ; preds = %158
  %192 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %192, i64 %195
  %197 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %196, i32 0, i32 5
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @brelse(i8* %198)
  br label %200

200:                                              ; preds = %191, %158
  %201 = load %struct.inode*, %struct.inode** %5, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %204, i64 %206
  %208 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = call i8* @sb_bread(i32 %203, i8* %209)
  %211 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %211, i64 %214
  %216 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %215, i32 0, i32 5
  store i8* %210, i8** %216, align 8
  %217 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %217, i64 %220
  %222 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %221, i32 0, i32 5
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %200
  %226 = load i32, i32* @EIO, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %4, align 4
  br label %293

228:                                              ; preds = %200
  %229 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %229, i64 %232
  %234 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %233, i32 0, i32 5
  %235 = load i8*, i8** %234, align 8
  %236 = call i8* @ext_block_hdr(i8* %235)
  %237 = bitcast i8* %236 to %struct.ext4_extent_header*
  %238 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %238, i64 %241
  %243 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %242, i32 0, i32 4
  store %struct.ext4_extent_header* %237, %struct.ext4_extent_header** %243, align 8
  br label %153

244:                                              ; preds = %153
  %245 = load %struct.ext4_extent**, %struct.ext4_extent*** %7, align 8
  store %struct.ext4_extent* null, %struct.ext4_extent** %245, align 8
  %246 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %246, i64 %248
  %250 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %249, i32 0, i32 2
  store %struct.ext4_extent* null, %struct.ext4_extent** %250, align 8
  %251 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %251, i64 %253
  %255 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %254, i32 0, i32 4
  %256 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %255, align 8
  store %struct.ext4_extent_header* %256, %struct.ext4_extent_header** %8, align 8
  %257 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %258 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @le16_to_cpu(i32 %259)
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %244
  %263 = load i32, i32* @ENODATA, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %4, align 4
  br label %293

265:                                              ; preds = %244
  %266 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %266, i64 %268
  %270 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %269, i32 0, i32 4
  %271 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %270, align 8
  %272 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %271)
  %273 = load %struct.ext4_extent**, %struct.ext4_extent*** %7, align 8
  store %struct.ext4_extent* %272, %struct.ext4_extent** %273, align 8
  %274 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %275 = load i32, i32* %10, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %274, i64 %276
  %278 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %277, i32 0, i32 2
  store %struct.ext4_extent* %272, %struct.ext4_extent** %278, align 8
  %279 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %279, i64 %281
  %283 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %282, i32 0, i32 2
  %284 = load %struct.ext4_extent*, %struct.ext4_extent** %283, align 8
  %285 = call i8* @ext4_ext_pblock(%struct.ext4_extent* %284)
  %286 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %286, i64 %288
  %290 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %289, i32 0, i32 3
  store i8* %285, i8** %290, align 8
  store i32 0, i32* %4, align 4
  br label %293

291:                                              ; preds = %56
  br label %52

292:                                              ; preds = %52
  store i32 1, i32* %4, align 4
  br label %293

293:                                              ; preds = %292, %265, %262, %225, %134, %30
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i8* @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i64 @EXT_LAST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i8* @ext4_idx_pblock(i64) #1

declare dso_local i32 @brelse(i8*) #1

declare dso_local i8* @sb_bread(i32, i8*) #1

declare dso_local i8* @ext_block_hdr(i8*) #1

declare dso_local i64 @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
